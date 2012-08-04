.class Lcom/facebook/katana/ComposerActivity$18;
.super Ljava/lang/Object;
.source "ComposerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ComposerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1519
    iput-object p1, p0, Lcom/facebook/katana/ComposerActivity$18;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1522
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1523
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$18;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/ComposerActivity;->finish()V

    .line 1524
    return-void
.end method
