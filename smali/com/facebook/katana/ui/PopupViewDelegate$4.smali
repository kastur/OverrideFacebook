.class Lcom/facebook/katana/ui/PopupViewDelegate$4;
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
    .line 132
    iput-object p1, p0, Lcom/facebook/katana/ui/PopupViewDelegate$4;->a:Lcom/facebook/katana/ui/PopupViewDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate$4;->a:Lcom/facebook/katana/ui/PopupViewDelegate;

    invoke-static {v0}, Lcom/facebook/katana/ui/PopupViewDelegate;->c(Lcom/facebook/katana/ui/PopupViewDelegate;)Lcom/facebook/katana/ui/CustomRelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/ui/CustomRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "fb://messaging/compose/new"

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/facebook/katana/ui/PopupViewDelegate$4;->a:Lcom/facebook/katana/ui/PopupViewDelegate;

    invoke-static {v1}, Lcom/facebook/katana/ui/PopupViewDelegate;->c(Lcom/facebook/katana/ui/PopupViewDelegate;)Lcom/facebook/katana/ui/CustomRelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/ui/CustomRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 138
    return-void
.end method
