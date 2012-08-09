.class public Lcom/facebook/katana/ui/TagSuggestionView;
.super Landroid/widget/LinearLayout;
.source "TagSuggestionView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 37
    const v1, 0x7f030107

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/facebook/katana/ui/TagSuggestionView;->setPadding(IIII)V

    .line 40
    invoke-virtual {p0, v2}, Lcom/facebook/katana/ui/TagSuggestionView;->setBackgroundColor(I)V

    .line 42
    const v0, 0x7f080074

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/TagSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/katana/ui/TagSuggestionView;->d:Landroid/widget/Button;

    .line 43
    const v0, 0x7f0802e7

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/TagSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/katana/ui/TagSuggestionView;->e:Landroid/widget/Button;

    .line 45
    iget-object v0, p0, Lcom/facebook/katana/ui/TagSuggestionView;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 46
    iget-object v0, p0, Lcom/facebook/katana/ui/TagSuggestionView;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 47
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/katana/ui/TagSuggestionView;->e:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/facebook/katana/ui/TagSuggestionView;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setWidth(I)V

    .line 64
    iget-object v0, p0, Lcom/facebook/katana/ui/TagSuggestionView;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/facebook/katana/ui/TagSuggestionView;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHeight(I)V

    .line 65
    return-void
.end method

.method private e()I
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/facebook/katana/ui/TagSuggestionView;->c:I

    int-to-float v0, v0

    iget v1, p0, Lcom/facebook/katana/ui/TagSuggestionView;->f:F

    mul-float/2addr v0, v1

    const v1, 0x3fe66666

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/katana/ui/TagSuggestionView;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/ui/TagSuggestionView;->d:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/facebook/katana/ui/TagSuggestionView;->d:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v1

    .line 71
    iget-object v2, p0, Lcom/facebook/katana/ui/TagSuggestionView;->d:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getCompoundPaddingRight()I

    move-result v2

    .line 73
    float-to-int v0, v0

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    invoke-direct {p0}, Lcom/facebook/katana/ui/TagSuggestionView;->e()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/katana/ui/TagSuggestionView;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    .line 78
    iget-object v1, p0, Lcom/facebook/katana/ui/TagSuggestionView;->d:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    .line 79
    iget-object v2, p0, Lcom/facebook/katana/ui/TagSuggestionView;->d:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getCompoundPaddingTop()I

    move-result v2

    int-to-float v2, v2

    .line 80
    iget-object v3, p0, Lcom/facebook/katana/ui/TagSuggestionView;->d:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getCompoundPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    .line 82
    add-float/2addr v0, v1

    add-float/2addr v0, v2

    add-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/facebook/katana/ui/TagSuggestionView;->c()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lcom/facebook/katana/ui/TagSuggestionView;->c:I

    int-to-float v0, v0

    iget v1, p0, Lcom/facebook/katana/ui/TagSuggestionView;->f:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x4020

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/facebook/katana/ui/TagSuggestionView;->a:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/facebook/katana/ui/TagSuggestionView;->b:F

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 97
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/facebook/katana/ui/TagSuggestionView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/katana/ui/TagSuggestionView;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setPressed(Z)V

    .line 100
    iget-object v0, p0, Lcom/facebook/katana/ui/TagSuggestionView;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setPressed(Z)V

    goto :goto_0

    .line 104
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/katana/ui/TagSuggestionView;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setPressed(Z)V

    .line 105
    iget-object v0, p0, Lcom/facebook/katana/ui/TagSuggestionView;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setPressed(Z)V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setEyeDistance(F)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput p1, p0, Lcom/facebook/katana/ui/TagSuggestionView;->f:F

    .line 58
    invoke-direct {p0}, Lcom/facebook/katana/ui/TagSuggestionView;->d()V

    .line 59
    return-void
.end method

.method public setImageSize(I)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput p1, p0, Lcom/facebook/katana/ui/TagSuggestionView;->c:I

    .line 52
    invoke-direct {p0}, Lcom/facebook/katana/ui/TagSuggestionView;->d()V

    .line 53
    return-void
.end method

.method public setX(F)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput p1, p0, Lcom/facebook/katana/ui/TagSuggestionView;->a:F

    .line 117
    return-void
.end method

.method public setY(F)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput p1, p0, Lcom/facebook/katana/ui/TagSuggestionView;->b:F

    .line 133
    return-void
.end method
