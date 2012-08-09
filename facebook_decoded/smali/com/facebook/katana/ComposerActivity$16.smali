.class Lcom/facebook/katana/ComposerActivity$16;
.super Ljava/lang/Object;
.source "ComposerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/katana/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ComposerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/facebook/katana/ComposerActivity$16;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$16;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->k(Lcom/facebook/katana/ComposerActivity;)V

    .line 1192
    return-void
.end method
