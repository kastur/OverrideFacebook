.class public Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "StepHowItWorksActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/text/Spanned;)Landroid/text/Spanned;
    .locals 5
    .parameter

    .prologue
    .line 38
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 39
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 40
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 41
    const v2, 0x7f0b0456

    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 42
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 44
    new-instance v3, Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity$1;

    invoke-direct {v3, p0}, Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity$1;-><init>(Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity;)V

    const/16 v4, 0x21

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 55
    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    const-string v0, "<a href=\"%s\">%s</a>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "fb://settings"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0b0457

    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 66
    const v0, 0x7f08010f

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity$2;-><init>(Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity;->setContentView(I)V

    .line 27
    const v0, 0x7f08010e

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 28
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 30
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0459

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity;->f()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity;->a(Landroid/text/Spanned;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepHowItWorksActivity;->g()V

    .line 35
    return-void
.end method
