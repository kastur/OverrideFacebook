.class public Lcom/facebook/orca/common/ui/widgets/text/TextViewWithHooks;
.super Landroid/widget/TextView;
.source "TextViewWithHooks.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/ui/widgets/text/TextViewHook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/common/ui/widgets/text/TextViewHook;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/TextViewWithHooks;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/TextViewWithHooks;->a:Ljava/util/List;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/TextViewWithHooks;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/TextViewWithHooks;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/TextViewWithHooks;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/text/TextViewHook;

    .line 62
    invoke-interface {v0, p1}, Lcom/facebook/orca/common/ui/widgets/text/TextViewHook;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/TextViewWithHooks;->a:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/TextViewWithHooks;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/text/TextViewHook;

    .line 45
    invoke-interface {v0, p1}, Lcom/facebook/orca/common/ui/widgets/text/TextViewHook;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 52
    :cond_1
    if-nez v0, :cond_2

    .line 53
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 55
    :cond_2
    return v0
.end method
