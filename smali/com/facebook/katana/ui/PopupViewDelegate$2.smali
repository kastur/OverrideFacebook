.class Lcom/facebook/katana/ui/PopupViewDelegate$2;
.super Ljava/lang/Object;
.source "PopupViewDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/ui/PopupViewDelegate;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ui/PopupViewDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/facebook/katana/ui/PopupViewDelegate$2;->a:Lcom/facebook/katana/ui/PopupViewDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate$2;->a:Lcom/facebook/katana/ui/PopupViewDelegate;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/PopupViewDelegate;->a()V

    .line 116
    return-void
.end method
