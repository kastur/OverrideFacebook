.class Lcom/facebook/katana/ComposerActivity$9;
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
    .line 811
    iput-object p1, p0, Lcom/facebook/katana/ComposerActivity$9;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 814
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$9;->a:Lcom/facebook/katana/ComposerActivity;

    sget-object v1, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$UIElements;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/katana/ComposerActivity;->a(Lcom/facebook/katana/ComposerActivity;Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$9;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/ComposerActivity;->openAudienceSelector(Landroid/view/View;)V

    .line 817
    return-void
.end method
