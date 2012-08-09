.class Lcom/facebook/orca/app/MessagesModule$GlobalNotificationPrefsSynchronizerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1451
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1451
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$GlobalNotificationPrefsSynchronizerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;
    .locals 4

    .prologue
    .line 1456
    new-instance v2, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;

    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$GlobalNotificationPrefsSynchronizerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const-class v1, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v3, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v1, v3}, Lcom/facebook/orca/app/MessagesModule$GlobalNotificationPrefsSynchronizerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/ops/OrcaServiceOperation;)V

    return-object v2
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1451
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$GlobalNotificationPrefsSynchronizerProvider;->b()Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;

    move-result-object v0

    return-object v0
.end method
