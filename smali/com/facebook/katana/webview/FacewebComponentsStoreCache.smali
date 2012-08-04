.class public Lcom/facebook/katana/webview/FacewebComponentsStoreCache;
.super Ljava/lang/Object;
.source "FacewebComponentsStoreCache.java"


# static fields
.field private static a:Lcom/facebook/katana/webview/FacewebComponentsStoreMDS;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const-class v0, Lcom/facebook/katana/webview/FacewebComponentsStoreCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method protected static a()Lcom/facebook/katana/webview/FacewebComponentsStoreMDS;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/facebook/katana/webview/FacewebComponentsStoreCache;->a:Lcom/facebook/katana/webview/FacewebComponentsStoreMDS;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/facebook/katana/webview/FacewebComponentsStoreMDS;

    invoke-direct {v0}, Lcom/facebook/katana/webview/FacewebComponentsStoreMDS;-><init>()V

    sput-object v0, Lcom/facebook/katana/webview/FacewebComponentsStoreCache;->a:Lcom/facebook/katana/webview/FacewebComponentsStoreMDS;

    .line 195
    :cond_0
    sget-object v0, Lcom/facebook/katana/webview/FacewebComponentsStoreCache;->a:Lcom/facebook/katana/webview/FacewebComponentsStoreMDS;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 179
    invoke-static {}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache;->a()Lcom/facebook/katana/webview/FacewebComponentsStoreMDS;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/binding/ManagedDataStore$ClearType;->CLEAR_ALL:Lcom/facebook/katana/binding/ManagedDataStore$ClearType;

    invoke-virtual {v0, p0, v1}, Lcom/facebook/katana/webview/FacewebComponentsStoreMDS;->a(Landroid/content/Context;Lcom/facebook/katana/binding/ManagedDataStore$ClearType;)V

    .line 180
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Listener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 167
    invoke-static {p0}, Lcom/facebook/katana/webview/MFacewebVersion;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 168
    if-nez v0, :cond_0

    .line 169
    const-string v0, ""

    .line 171
    :cond_0
    invoke-static {p0, v0, p1}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache;->a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Listener;)V

    .line 172
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Listener;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    new-instance v0, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;

    invoke-static {p0}, Lcom/facebook/katana/Constants$URL;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache;->a()Lcom/facebook/katana/webview/FacewebComponentsStoreMDS;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p2}, Lcom/facebook/katana/webview/FacewebComponentsStoreMDS;->a(Landroid/content/Context;Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Key;Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Listener;)Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;

    move-result-object v0

    .line 147
    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    iget-object v0, v0, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;->a:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/katana/util/Tuple;

    .line 154
    iget-object v1, v0, Lcom/facebook/katana/util/Tuple;->a:Ljava/lang/Object;

    check-cast v1, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$LoadError;

    iget-object v0, v0, Lcom/facebook/katana/util/Tuple;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Listener;->a(Lcom/facebook/katana/webview/FacewebComponentsStoreCache$LoadError;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Value;->b()Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Listener;->a(Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 187
    invoke-static {}, Lcom/facebook/katana/webview/FacewebComponentsStoreCache;->a()Lcom/facebook/katana/webview/FacewebComponentsStoreMDS;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/binding/ManagedDataStore$ClearType;->CLEAR_ALL:Lcom/facebook/katana/binding/ManagedDataStore$ClearType;

    const-wide/16 v2, 0xe10

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/facebook/katana/webview/FacewebComponentsStoreMDS;->a(Landroid/content/Context;Lcom/facebook/katana/binding/ManagedDataStore$ClearType;J)V

    .line 188
    return-void
.end method
