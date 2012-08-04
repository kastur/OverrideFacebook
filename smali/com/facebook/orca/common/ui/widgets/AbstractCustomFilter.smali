.class public abstract Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;
.super Ljava/lang/Object;
.source "AbstractCustomFilter.java"

# interfaces
.implements Lcom/facebook/orca/common/ui/widgets/CustomFilter;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/os/Handler;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;->c:Ljava/lang/Object;

    .line 65
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter$ResultsHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter$ResultsHandler;-><init>(Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;B)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;->b:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0, v0}, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;->a(Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;)V

    .line 85
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "Filter"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 93
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 94
    new-instance v2, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter$RequestHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter$RequestHandler;-><init>(Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;->a:Landroid/os/Handler;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;->a:Landroid/os/Handler;

    const v2, -0x2f2f0ff3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 101
    new-instance v3, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter$RequestArguments;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter$RequestArguments;-><init>(B)V

    .line 104
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v3, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter$RequestArguments;->a:Ljava/lang/CharSequence;

    .line 105
    iput-object p2, v3, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter$RequestArguments;->b:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;

    .line 106
    if-eqz p2, :cond_1

    .line 107
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;->FILTERING:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    invoke-interface {p2, v0}, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;->a(Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;)V

    .line 109
    :cond_1
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;->a:Landroid/os/Handler;

    const v3, -0x2f2f0ff3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;->a:Landroid/os/Handler;

    const v3, -0x21524111

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;->a:Landroid/os/Handler;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 114
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 104
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected abstract a(Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;)V
.end method

.method protected abstract b(Ljava/lang/CharSequence;)Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;
.end method
