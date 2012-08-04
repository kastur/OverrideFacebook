.class public Lcom/facebook/katana/features/composer/ComposerUserSettings;
.super Ljava/lang/Object;
.source "ComposerUserSettings.java"


# static fields
.field private static final a:Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/facebook/katana/binding/SimpleManagedDataStore;

    sget-object v1, Lcom/facebook/katana/features/composer/ComposerUserSettings$ComposerUserSettingsClient;->INSTANCE:Lcom/facebook/katana/features/composer/ComposerUserSettings$ComposerUserSettingsClient;

    invoke-direct {v0, v1}, Lcom/facebook/katana/binding/SimpleManagedDataStore;-><init>(Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;)V

    sput-object v0, Lcom/facebook/katana/features/composer/ComposerUserSettings;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method private static a()Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    sget-object v0, Lcom/facebook/katana/features/composer/ComposerUserSettings;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlGetUserServerSettings;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    const-string v0, "structured_composer"

    sget-object v1, Lcom/facebook/katana/features/composer/ComposerUserSettings;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    invoke-static {p1, p0, v0, p2, v1}, Lcom/facebook/katana/service/method/FqlGetUserServerSettings;->b(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Lcom/facebook/katana/service/method/FqlGetUserServerSettings;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-static {}, Lcom/facebook/katana/features/composer/ComposerUserSettings;->a()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-static {}, Lcom/facebook/katana/features/composer/ComposerUserSettings;->a()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 29
    const-string v0, "composer_share_location"

    invoke-static {p0, v0}, Lcom/facebook/katana/features/composer/ComposerUserSettings;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 36
    const-string v0, "composer_tour_completed"

    invoke-static {p0, v0}, Lcom/facebook/katana/features/composer/ComposerUserSettings;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
