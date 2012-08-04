.class public Lcom/facebook/katana/ui/MultiShotHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "MultiShotHorizontalScrollView.java"


# instance fields
.field private a:Lcom/facebook/katana/ui/MultiShotHorizontalScrollView$ScrollViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 38
    iget-object v0, p0, Lcom/facebook/katana/ui/MultiShotHorizontalScrollView;->a:Lcom/facebook/katana/ui/MultiShotHorizontalScrollView$ScrollViewListener;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/facebook/katana/ui/MultiShotHorizontalScrollView;->a:Lcom/facebook/katana/ui/MultiShotHorizontalScrollView$ScrollViewListener;

    invoke-interface {v0}, Lcom/facebook/katana/ui/MultiShotHorizontalScrollView$ScrollViewListener;->a()V

    .line 41
    :cond_0
    return-void
.end method

.method public setScrollViewListener(Lcom/facebook/katana/ui/MultiShotHorizontalScrollView$ScrollViewListener;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/facebook/katana/ui/MultiShotHorizontalScrollView;->a:Lcom/facebook/katana/ui/MultiShotHorizontalScrollView$ScrollViewListener;

    .line 31
    return-void
.end method
