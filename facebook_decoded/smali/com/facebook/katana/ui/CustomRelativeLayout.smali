.class public Lcom/facebook/katana/ui/CustomRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CustomRelativeLayout.java"


# instance fields
.field private a:Lcom/facebook/katana/ui/CustomRelativeLayout$LayoutChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/ui/CustomRelativeLayout;->a:Lcom/facebook/katana/ui/CustomRelativeLayout$LayoutChangedListener;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/ui/CustomRelativeLayout;->a:Lcom/facebook/katana/ui/CustomRelativeLayout$LayoutChangedListener;

    .line 27
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 34
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/ui/CustomRelativeLayout;->a:Lcom/facebook/katana/ui/CustomRelativeLayout$LayoutChangedListener;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/facebook/katana/ui/CustomRelativeLayout;->a:Lcom/facebook/katana/ui/CustomRelativeLayout$LayoutChangedListener;

    invoke-interface {v0}, Lcom/facebook/katana/ui/CustomRelativeLayout$LayoutChangedListener;->a()V

    .line 37
    :cond_0
    return-void
.end method

.method public setOnLayoutChangedListener(Lcom/facebook/katana/ui/CustomRelativeLayout$LayoutChangedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/facebook/katana/ui/CustomRelativeLayout;->a:Lcom/facebook/katana/ui/CustomRelativeLayout$LayoutChangedListener;

    .line 42
    return-void
.end method
