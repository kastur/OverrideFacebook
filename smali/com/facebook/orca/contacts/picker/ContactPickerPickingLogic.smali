.class public Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;
.super Ljava/lang/Object;
.source "ContactPickerPickingLogic.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "messenger_sms_android"

    invoke-static {v0}, Lcom/facebook/orca/prefs/PrefKeys;->d(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Ljavax/inject/Provider;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/prefs/OrcaSharedPreferences;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method static a(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/User;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    if-ne p2, p0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    .line 47
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/orca/users/User;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/orca/users/User;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/orca/common/util/EditDistanceUtil;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 52
    invoke-virtual {p0}, Lcom/facebook/orca/users/User;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/orca/common/util/EditDistanceUtil;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 55
    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method
