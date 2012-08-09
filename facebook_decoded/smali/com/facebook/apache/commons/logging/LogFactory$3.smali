.class final Lcom/facebook/apache/commons/logging/LogFactory$3;
.super Ljava/lang/Object;
.source "LogFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private synthetic a:Ljava/lang/ClassLoader;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1356
    iput-object p1, p0, Lcom/facebook/apache/commons/logging/LogFactory$3;->a:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lcom/facebook/apache/commons/logging/LogFactory$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/facebook/apache/commons/logging/LogFactory$3;->a:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/facebook/apache/commons/logging/LogFactory$3;->a:Ljava/lang/ClassLoader;

    iget-object v1, p0, Lcom/facebook/apache/commons/logging/LogFactory$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1361
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/commons/logging/LogFactory$3;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method
