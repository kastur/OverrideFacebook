.class Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$GetPhoneBookTask;
.super Landroid/os/AsyncTask;
.source "StepAddFriendsActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/facebook/katana/model/FacebookPhonebookContact;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$GetPhoneBookTask;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 513
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$GetPhoneBookTask;-><init>(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)V

    return-void
.end method

.method private varargs a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$GetPhoneBookTask;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/util/PhonebookUtils;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 525
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$GetPhoneBookTask;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->a(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;Ljava/util/Map;)Ljava/util/Map;

    .line 526
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPhonebookContact;

    .line 527
    iget-object v2, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$GetPhoneBookTask;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->f(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)Ljava/util/Map;

    move-result-object v2

    iget-wide v3, v0, Lcom/facebook/katana/model/FacebookPhonebookContact;->recordId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$GetPhoneBookTask;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->h()V

    .line 530
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$GetPhoneBookTask;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 513
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$GetPhoneBookTask;->a(Ljava/util/List;)V

    return-void
.end method
