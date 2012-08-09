.class public Lcom/facebook/katana/ui/SaneLinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "SaneLinkMovementMethod.java"


# static fields
.field private static a:Lcom/facebook/katana/ui/SaneLinkMovementMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method public static a()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/facebook/katana/ui/SaneLinkMovementMethod;->a:Lcom/facebook/katana/ui/SaneLinkMovementMethod;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/facebook/katana/ui/SaneLinkMovementMethod;

    invoke-direct {v0}, Lcom/facebook/katana/ui/SaneLinkMovementMethod;-><init>()V

    sput-object v0, Lcom/facebook/katana/ui/SaneLinkMovementMethod;->a:Lcom/facebook/katana/ui/SaneLinkMovementMethod;

    .line 62
    :cond_0
    sget-object v0, Lcom/facebook/katana/ui/SaneLinkMovementMethod;->a:Lcom/facebook/katana/ui/SaneLinkMovementMethod;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 26
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 28
    if-eq v3, v1, :cond_0

    if-nez v3, :cond_2

    .line 30
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 31
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 33
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    .line 34
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    .line 36
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v5

    add-int/2addr v0, v5

    .line 37
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    .line 39
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 40
    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    .line 41
    int-to-float v0, v0

    invoke-virtual {v5, v4, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    .line 43
    const-class v4, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v0, v0, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 45
    array-length v4, v0

    if-eqz v4, :cond_2

    .line 46
    if-ne v3, v1, :cond_1

    .line 47
    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    :cond_1
    move v0, v1

    .line 54
    :goto_0
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method
