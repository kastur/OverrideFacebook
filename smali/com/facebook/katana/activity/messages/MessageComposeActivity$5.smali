.class Lcom/facebook/katana/activity/messages/MessageComposeActivity$5;
.super Ljava/lang/Object;
.source "MessageComposeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/messages/MessageComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$5;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 162
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 163
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$5;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->c(Lcom/facebook/katana/activity/messages/MessageComposeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 164
    iget-wide v3, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$5;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    const-class v3, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    const-string v2, "profiles"

    invoke-static {v1}, Lcom/facebook/katana/util/IntentUtils;->a(Ljava/util/Set;)[J

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 170
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$5;->a:Lcom/facebook/katana/activity/messages/MessageComposeActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 171
    return-void
.end method
