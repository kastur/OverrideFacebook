.class Lcom/facebook/katana/ui/PopupViewDelegate$3$1;
.super Ljava/lang/Object;
.source "PopupViewDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/katana/ui/PopupViewDelegate$3;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ui/PopupViewDelegate$3;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/facebook/katana/ui/PopupViewDelegate$3$1;->a:Lcom/facebook/katana/ui/PopupViewDelegate$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate$3$1;->a:Lcom/facebook/katana/ui/PopupViewDelegate$3;

    iget-object v0, v0, Lcom/facebook/katana/ui/PopupViewDelegate$3;->a:Lcom/facebook/katana/ui/PopupViewDelegate;

    invoke-static {v0}, Lcom/facebook/katana/ui/PopupViewDelegate;->a(Lcom/facebook/katana/ui/PopupViewDelegate;)V

    .line 126
    return-void
.end method
