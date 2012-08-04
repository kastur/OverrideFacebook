.class Lcom/facebook/katana/ComposerActivity$5;
.super Ljava/lang/Object;
.source "ComposerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ComposerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 770
    iput-object p1, p0, Lcom/facebook/katana/ComposerActivity$5;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 773
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$5;->a:Lcom/facebook/katana/ComposerActivity;

    sget-object v1, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$UIElements;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/katana/ComposerActivity;->a(Lcom/facebook/katana/ComposerActivity;Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$5;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/ComposerActivity;->launchPlacesNearby(Landroid/view/View;)V

    .line 776
    return-void
.end method
