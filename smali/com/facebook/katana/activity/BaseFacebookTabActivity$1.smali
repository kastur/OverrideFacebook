.class Lcom/facebook/katana/activity/BaseFacebookTabActivity$1;
.super Ljava/lang/Object;
.source "BaseFacebookTabActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/BaseFacebookTabActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/BaseFacebookTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/facebook/katana/activity/BaseFacebookTabActivity$1;->a:Lcom/facebook/katana/activity/BaseFacebookTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/facebook/katana/activity/BaseFacebookTabActivity$1;->a:Lcom/facebook/katana/activity/BaseFacebookTabActivity;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/BaseFacebookTabActivity;->h()Landroid/widget/TabHost;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/MyTabHost;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/MyTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 64
    return-void
.end method
