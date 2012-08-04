.class public Lcom/facebook/katana/webview/MFacewebVersion;
.super Ljava/lang/Object;
.source "MFacewebVersion.java"


# static fields
.field private static a:Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lcom/facebook/katana/webview/MFacewebVersion;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/facebook/katana/binding/SimpleManagedDataStore;

    new-instance v1, Lcom/facebook/katana/webview/MFacewebVersionClient;

    invoke-direct {v1}, Lcom/facebook/katana/webview/MFacewebVersionClient;-><init>()V

    invoke-direct {v0, v1}, Lcom/facebook/katana/binding/SimpleManagedDataStore;-><init>(Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;)V

    sput-object v0, Lcom/facebook/katana/webview/MFacewebVersion;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    .line 32
    :cond_0
    sget-object v0, Lcom/facebook/katana/webview/MFacewebVersion;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 19
    invoke-static {}, Lcom/facebook/katana/webview/MFacewebVersion;->a()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    const-string v1, "MRootVersion"

    invoke-virtual {v0, p0, v1}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-static {}, Lcom/facebook/katana/webview/MFacewebVersion;->a()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "MRootVersion"

    move-object v1, p0

    move-object v5, p1

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    return-void
.end method
