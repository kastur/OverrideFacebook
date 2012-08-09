.class Lcom/facebook/katana/ComposerActivity$17;
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
    .line 1461
    iput-object p1, p0, Lcom/facebook/katana/ComposerActivity$17;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$17;->a:Lcom/facebook/katana/ComposerActivity;

    const-string v1, "fb://composertour"

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1467
    return-void
.end method
