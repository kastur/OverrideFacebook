.class public Lcom/facebook/katana/ui/ComposerEditText;
.super Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;
.source "ComposerEditText.java"


# instance fields
.field private c:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/facebook/katana/ui/ComposerEditText;

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->a(Ljava/lang/Class;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/katana/ui/ComposerEditText;->c:Landroid/view/SurfaceView;

    .line 68
    iget-object v0, p0, Lcom/facebook/katana/ui/ComposerEditText;->c:Landroid/view/SurfaceView;

    const v1, 0x7f08002c

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setId(I)V

    .line 69
    iget-object v0, p0, Lcom/facebook/katana/ui/ComposerEditText;->c:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/facebook/katana/ui/ComposerEditText;->c:Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 71
    iget-object v0, p0, Lcom/facebook/katana/ui/ComposerEditText;->c:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/ComposerEditText;->setDropDownAnchor(I)V

    .line 72
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ComposerEditText;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/katana/ui/ComposerEditText;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ComposerEditText;->getSelectionStart()I

    move-result v0

    .line 129
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ComposerEditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 132
    if-nez v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 138
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v2

    .line 139
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v0

    .line 140
    add-int/2addr v0, v2

    .line 141
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ComposerEditText;->getLineHeight()I

    move-result v1

    .line 144
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 147
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 149
    iget-object v0, p0, Lcom/facebook/katana/ui/ComposerEditText;->c:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v0, p0, Lcom/facebook/katana/ui/ComposerEditText;->c:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/facebook/katana/binding/ProfileImagesCache;)Lcom/facebook/katana/binding/AppSessionListener;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ComposerEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 80
    const-string v1, "The wrapper of ComposerTextEdit must be put in a ScrollView"

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/ScrollView;

    invoke-static {v1, v2}, Lcom/facebook/katana/util/Assert;->b(Ljava/lang/String;Z)V

    .line 83
    iget-object v1, p0, Lcom/facebook/katana/ui/ComposerEditText;->c:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    invoke-super {p0, p1, p2}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->a(Landroid/app/Activity;Lcom/facebook/katana/binding/ProfileImagesCache;)Lcom/facebook/katana/binding/AppSessionListener;

    move-result-object v0

    return-object v0
.end method

.method public extendSelection(I)V
    .locals 1
    .parameter

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ComposerEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->a(Ljava/lang/CharSequence;)I

    move-result v0

    .line 105
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-super {p0, v0}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->extendSelection(I)V

    .line 106
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 111
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ComposerEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->a(Ljava/lang/CharSequence;)I

    move-result v0

    .line 112
    if-gt p2, v0, :cond_0

    if-le p1, v0, :cond_2

    .line 113
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/ui/ComposerEditText;->setSelection(II)V

    .line 117
    :cond_1
    :goto_0
    return-void

    .line 114
    :cond_2
    if-eq p1, v1, :cond_3

    if-ne p2, v1, :cond_1

    .line 115
    :cond_3
    invoke-virtual {p0, v2, v2}, Lcom/facebook/katana/ui/ComposerEditText;->setSelection(II)V

    goto :goto_0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/facebook/katana/ui/ComposerEditText;->a()V

    .line 122
    invoke-super {p0, p1, p2}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    .line 123
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ComposerEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->a(Ljava/lang/CharSequence;)I

    move-result v0

    .line 90
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-super {p0, v0}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->setSelection(I)V

    .line 91
    return-void
.end method

.method public setSelection(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ComposerEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->a(Ljava/lang/CharSequence;)I

    move-result v0

    .line 97
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->setSelection(II)V

    .line 99
    return-void
.end method
