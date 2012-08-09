.class public Lcom/facebook/katana/view/FacebookListView;
.super Landroid/widget/ListView;
.source "FacebookListView.java"


# static fields
.field private static c:Lcom/facebook/katana/service/method/PerfLogging$Step;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field private d:Lcom/facebook/katana/service/method/PerfLogging$Step;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/katana/view/FacebookListView;->c:Lcom/facebook/katana/service/method/PerfLogging$Step;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 13
    const-string v0, "FacebookListView"

    iput-object v0, p0, Lcom/facebook/katana/view/FacebookListView;->a:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/view/FacebookListView;->d:Lcom/facebook/katana/service/method/PerfLogging$Step;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const-string v0, "FacebookListView"

    iput-object v0, p0, Lcom/facebook/katana/view/FacebookListView;->a:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/view/FacebookListView;->d:Lcom/facebook/katana/service/method/PerfLogging$Step;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const-string v0, "FacebookListView"

    iput-object v0, p0, Lcom/facebook/katana/view/FacebookListView;->a:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/view/FacebookListView;->d:Lcom/facebook/katana/service/method/PerfLogging$Step;

    .line 34
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/katana/view/FacebookListView;->d:Lcom/facebook/katana/service/method/PerfLogging$Step;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/facebook/katana/view/FacebookListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/view/FacebookListView;->d:Lcom/facebook/katana/service/method/PerfLogging$Step;

    iget-object v2, p0, Lcom/facebook/katana/view/FacebookListView;->a:Ljava/lang/String;

    iget-wide v3, p0, Lcom/facebook/katana/view/FacebookListView;->b:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/method/PerfLogging;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/PerfLogging$Step;Ljava/lang/String;J)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/view/FacebookListView;->d:Lcom/facebook/katana/service/method/PerfLogging$Step;

    .line 53
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 54
    return-void
.end method

.method public setNextDrawStep(Lcom/facebook/katana/service/method/PerfLogging$Step;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    sget-object v0, Lcom/facebook/katana/service/method/PerfLogging$Step;->UI_DRAWN_STALE:Lcom/facebook/katana/service/method/PerfLogging$Step;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/facebook/katana/service/method/PerfLogging$Step;->UI_DRAWN_FRESH:Lcom/facebook/katana/service/method/PerfLogging$Step;

    if-eq p1, v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/facebook/katana/view/FacebookListView;->d:Lcom/facebook/katana/service/method/PerfLogging$Step;

    goto :goto_0
.end method
