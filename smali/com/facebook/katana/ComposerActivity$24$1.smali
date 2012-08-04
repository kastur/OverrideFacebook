.class Lcom/facebook/katana/ComposerActivity$24$1;
.super Ljava/lang/Object;
.source "ComposerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/katana/ComposerActivity$24;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ComposerActivity$24;)V
    .locals 0
    .parameter

    .prologue
    .line 1827
    iput-object p1, p0, Lcom/facebook/katana/ComposerActivity$24$1;->a:Lcom/facebook/katana/ComposerActivity$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$24$1;->a:Lcom/facebook/katana/ComposerActivity$24;

    iget-object v0, v0, Lcom/facebook/katana/ComposerActivity$24;->a:Lcom/facebook/katana/ComposerActivity;

    iget-object v0, v0, Lcom/facebook/katana/ComposerActivity;->e:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1831
    return-void
.end method
