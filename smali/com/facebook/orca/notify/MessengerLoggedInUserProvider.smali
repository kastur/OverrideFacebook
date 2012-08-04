.class public Lcom/facebook/orca/notify/MessengerLoggedInUserProvider;
.super Landroid/content/ContentProvider;
.source "MessengerLoggedInUserProvider.java"


# static fields
.field public static final a:Ljava/lang/Integer;

.field private static b:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/facebook/orca/notify/MessengerLoggedInUserProvider;->b:Ljava/lang/Integer;

    .line 24
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/facebook/orca/notify/MessengerLoggedInUserProvider;->a:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "content://com.facebook.orca.notify.MessengerLoggedInUserProvider/logged_in_user"

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "delete should not be called on this content provider"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vnd.android.cursor.dir/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/orca/notify/MessengerLoggedInUserProvider;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "insert should not be called on this content provider"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v0, v1, [Ljava/lang/String;

    const-string v4, "li"

    aput-object v4, v0, v2

    invoke-direct {v3, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/facebook/orca/notify/MessengerLoggedInUserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/app/MessagesDataInitLockHelper;->a(Landroid/content/Context;)V

    .line 54
    invoke-virtual {p0}, Lcom/facebook/orca/notify/MessengerLoggedInUserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 56
    const-class v4, Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-virtual {v0, v4}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    .line 58
    invoke-interface {v0}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->d()Z

    move-result v4

    if-nez v4, :cond_0

    .line 59
    new-array v0, v1, [Ljava/lang/Object;

    sget-object v1, Lcom/facebook/orca/notify/MessengerLoggedInUserProvider;->a:Ljava/lang/Integer;

    aput-object v1, v0, v2

    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v3

    .line 74
    :goto_0
    return-object v0

    .line 62
    :cond_0
    invoke-interface {v0}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->h()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v0

    .line 64
    :try_start_0
    invoke-static {p3}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    .line 65
    const-string v5, "userId"

    invoke-virtual {v4, v5}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonNode;->n()Ljava/lang/String;

    move-result-object v4

    .line 67
    if-eqz v4, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 73
    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/orca/notify/MessengerLoggedInUserProvider;->b:Ljava/lang/Integer;

    :goto_2
    aput-object v0, v1, v2

    invoke-virtual {v3, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v3

    .line 74
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1

    .line 73
    :cond_1
    sget-object v0, Lcom/facebook/orca/notify/MessengerLoggedInUserProvider;->a:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "update should not be called on this content provider"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
