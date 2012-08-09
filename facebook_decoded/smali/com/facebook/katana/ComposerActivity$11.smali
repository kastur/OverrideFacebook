.class Lcom/facebook/katana/ComposerActivity$11;
.super Ljava/lang/Object;
.source "ComposerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ComposerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 950
    iput-object p1, p0, Lcom/facebook/katana/ComposerActivity$11;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 954
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$11;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->c(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/features/composer/AudienceAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/katana/features/composer/AudienceAdapter;->b:Z

    .line 955
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$11;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->c(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/features/composer/AudienceAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/facebook/katana/features/composer/AudienceAdapter;->e(I)[I

    move-result-object v0

    .line 956
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity$11;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v1}, Lcom/facebook/katana/ComposerActivity;->c(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/features/composer/AudienceAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/features/composer/AudienceAdapter;->h()[I

    move-result-object v1

    .line 957
    iget-object v2, p0, Lcom/facebook/katana/ComposerActivity$11;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v2}, Lcom/facebook/katana/ComposerActivity;->c(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/features/composer/AudienceAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/facebook/katana/features/composer/AudienceAdapter;->a([I)V

    .line 958
    if-eqz v1, :cond_0

    .line 959
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$11;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->c(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/features/composer/AudienceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/features/composer/AudienceAdapter;->i()V

    .line 961
    :cond_0
    const v0, 0x7f08007c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 963
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$11;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/ComposerActivity;->j()V

    .line 964
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$11;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->l(Lcom/facebook/katana/ComposerActivity;)V

    .line 965
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$11;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/ComposerActivity;->i()V

    .line 966
    return-void
.end method
