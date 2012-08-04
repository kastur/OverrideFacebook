.class public Lcom/facebook/orca/common/http/OrcaHttpModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "OrcaHttpModule.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/facebook/orca/common/http/OrcaHttpModule;->a:Landroid/content/Context;

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/http/OrcaHttpModule;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpModule;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/apache/http/conn/scheme/SocketFactory;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/facebook/orca/common/http/OrcaHttpModule;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/apache/http/conn/scheme/SocketFactory;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lorg/apache/http/conn/scheme/SocketFactory;
    .locals 3
    .parameter

    .prologue
    .line 231
    invoke-static {p0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v1

    .line 235
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 236
    return-object v1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/apache/http/conn/scheme/SocketFactory;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 197
    invoke-static {p0, p1}, Lcom/facebook/orca/common/http/OrcaHttpModule;->c(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v0

    .line 201
    :goto_0
    new-instance v1, Lcom/facebook/orca/common/http/SocketFactoryConverter;

    invoke-direct {v1, v0}, Lcom/facebook/orca/common/http/SocketFactoryConverter;-><init>(Lorg/apache/http/conn/scheme/SocketFactory;)V

    return-object v1

    .line 199
    :cond_0
    invoke-static {p1}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/String;)Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/conn/scheme/SocketFactory;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 210
    :try_start_0
    const-class v0, Landroid/net/http/AndroidHttpClient;

    const-string v1, "newInstance"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 211
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/http/AndroidHttpClient;

    .line 213
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v1

    .line 215
    invoke-virtual {v1}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v1

    .line 216
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 217
    return-object v1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 220
    :catch_1
    move-exception v0

    .line 221
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 222
    :catch_2
    move-exception v0

    .line 223
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    const-class v0, Lcom/facebook/apache/http/client/CookieStore;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/common/http/OrcaCookieStore;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 61
    const-class v0, Lcom/facebook/apache/http/client/HttpClient;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/common/http/OrcaHttpClient;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 62
    const-class v0, Lcom/facebook/orca/common/http/OrcaHttpClient;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 65
    const-class v0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpRequestProcessorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpRequestProcessorProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 68
    const-class v0, Lcom/facebook/orca/common/http/OrcaCookieStore;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaCookieStoreProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaCookieStoreProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 71
    const-class v0, Lcom/facebook/apache/http/conn/ClientConnectionManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/common/http/OrcaHttpModule$ClientConnectionManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/common/http/OrcaHttpModule$ClientConnectionManagerProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 73
    const-class v0, Lcom/facebook/apache/http/params/HttpParams;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/common/http/OrcaHttpModule$HttpParamsProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/common/http/OrcaHttpModule$HttpParamsProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 77
    const-class v0, Lcom/facebook/orca/protocol/base/RealBatchRunner;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/common/http/OrcaHttpModule$RealBatchRunnerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/common/http/OrcaHttpModule$RealBatchRunnerProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 79
    const-class v0, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/common/http/OrcaHttpModule$SimulatedBatchRunnerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/common/http/OrcaHttpModule$SimulatedBatchRunnerProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 81
    const-class v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/common/http/OrcaHttpModule$SingleMethodRunnerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/common/http/OrcaHttpModule$SingleMethodRunnerProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 83
    return-void
.end method
