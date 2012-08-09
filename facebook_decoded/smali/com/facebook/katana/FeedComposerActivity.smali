.class public Lcom/facebook/katana/FeedComposerActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "FeedComposerActivity.java"

# interfaces
.implements Lcom/facebook/katana/activity/NotNewNavEnabled;


# instance fields
.field private e:Lcom/facebook/katana/binding/AppSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/facebook/katana/FeedComposerActivity;->setContentView(I)V

    .line 27
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/FeedComposerActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 30
    const v0, 0x7f0800be

    invoke-virtual {p0, v0}, Lcom/facebook/katana/FeedComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0346

    invoke-virtual {p0, v1}, Lcom/facebook/katana/FeedComposerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    const v0, 0x7f0800e3

    invoke-virtual {p0, v0}, Lcom/facebook/katana/FeedComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 33
    check-cast v0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;

    .line 34
    iget-object v1, p0, Lcom/facebook/katana/FeedComposerActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->h()Lcom/facebook/katana/binding/ProfileImagesCache;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->a(Landroid/app/Activity;Lcom/facebook/katana/binding/ProfileImagesCache;)Lcom/facebook/katana/binding/AppSessionListener;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcom/facebook/katana/FeedComposerActivity;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/facebook/katana/FeedComposerActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 42
    :cond_0
    const v0, 0x7f0800e2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/FeedComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/FeedComposerActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/FeedComposerActivity$1;-><init>(Lcom/facebook/katana/FeedComposerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const/4 v0, -0x1

    const v1, 0x7f0b01b4

    invoke-virtual {p0, v1}, Lcom/facebook/katana/FeedComposerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/FeedComposerActivity;->a(ILjava/lang/String;)V

    .line 53
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const v0, 0x7f0b0300

    invoke-virtual {p0, v0}, Lcom/facebook/katana/FeedComposerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 58
    const v0, 0x7f0800e3

    invoke-virtual {p0, v0}, Lcom/facebook/katana/FeedComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 59
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->a(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 62
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 63
    const-string v2, "extra_comment_text"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/FeedComposerActivity;->setResult(ILandroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Lcom/facebook/katana/FeedComposerActivity;->finish()V

    .line 68
    :cond_0
    return-void
.end method
