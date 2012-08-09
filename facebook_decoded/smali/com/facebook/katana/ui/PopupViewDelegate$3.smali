.class Lcom/facebook/katana/ui/PopupViewDelegate$3;
.super Ljava/lang/Object;
.source "PopupViewDelegate.java"

# interfaces
.implements Lcom/facebook/katana/ui/CustomRelativeLayout$LayoutChangedListener;


# instance fields
.field final synthetic a:Lcom/facebook/katana/ui/PopupViewDelegate;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ui/PopupViewDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/facebook/katana/ui/PopupViewDelegate$3;->a:Lcom/facebook/katana/ui/PopupViewDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate$3;->a:Lcom/facebook/katana/ui/PopupViewDelegate;

    invoke-static {v0}, Lcom/facebook/katana/ui/PopupViewDelegate;->b(Lcom/facebook/katana/ui/PopupViewDelegate;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/ui/PopupViewDelegate$3$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/ui/PopupViewDelegate$3$1;-><init>(Lcom/facebook/katana/ui/PopupViewDelegate$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method
