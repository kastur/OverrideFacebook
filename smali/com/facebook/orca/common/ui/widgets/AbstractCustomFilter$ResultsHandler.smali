.class Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter$ResultsHandler;
.super Landroid/os/Handler;
.source "AbstractCustomFilter.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter$ResultsHandler;->a:Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter$ResultsHandler;-><init>(Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 221
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter$RequestArguments;

    .line 223
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter$ResultsHandler;->a:Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;

    iget-object v2, v0, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter$RequestArguments;->a:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter$RequestArguments;->c:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;->a(Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;)V

    .line 224
    iget-object v1, v0, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter$RequestArguments;->b:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, v0, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter$RequestArguments;->c:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter$RequestArguments;->c:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;

    iget v1, v1, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;->b:I

    .line 226
    :goto_0
    iget-object v2, v0, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter$RequestArguments;->b:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;

    invoke-interface {v2, v1}, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;->a(I)V

    .line 227
    iget-object v0, v0, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter$RequestArguments;->b:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;->FINISHED:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;->a(Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;)V

    .line 229
    :cond_0
    return-void

    .line 225
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method
