.class Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity$2;
.super Ljava/lang/Object;
.source "LegalDisclaimerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/net/Uri;

.field private synthetic b:Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity$2;->b:Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity;

    iput-object p2, p0, Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity$2;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity$2;->a:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 65
    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity$2;->b:Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method
