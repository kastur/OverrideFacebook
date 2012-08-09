.class public Lcom/facebook/katana/activity/media/RadioButtonCenter;
.super Landroid/widget/RadioButton;
.source "RadioButtonCenter.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    sget-object v0, Lcom/facebook/katana/R$styleable;->CompoundButton:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 25
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/RadioButtonCenter;->a:Landroid/graphics/drawable/Drawable;

    .line 26
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/RadioButtonCenter;->setButtonDrawable(I)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 34
    iget-object v0, p0, Lcom/facebook/katana/activity/media/RadioButtonCenter;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/facebook/katana/activity/media/RadioButtonCenter;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/RadioButtonCenter;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 36
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/RadioButtonCenter;->getGravity()I

    move-result v0

    and-int/lit8 v1, v0, 0x70

    .line 37
    iget-object v0, p0, Lcom/facebook/katana/activity/media/RadioButtonCenter;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 39
    const/4 v0, 0x0

    .line 41
    sparse-switch v1, :sswitch_data_0

    .line 50
    :goto_0
    iget-object v1, p0, Lcom/facebook/katana/activity/media/RadioButtonCenter;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 51
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/RadioButtonCenter;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 52
    iget-object v4, p0, Lcom/facebook/katana/activity/media/RadioButtonCenter;->a:Landroid/graphics/drawable/Drawable;

    add-int/2addr v1, v3

    add-int/2addr v2, v0

    invoke-virtual {v4, v3, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 53
    iget-object v0, p0, Lcom/facebook/katana/activity/media/RadioButtonCenter;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 55
    :cond_0
    return-void

    .line 43
    :sswitch_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/RadioButtonCenter;->getHeight()I

    move-result v0

    sub-int/2addr v0, v2

    .line 44
    goto :goto_0

    .line 46
    :sswitch_1
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/RadioButtonCenter;->getHeight()I

    move-result v0

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method
