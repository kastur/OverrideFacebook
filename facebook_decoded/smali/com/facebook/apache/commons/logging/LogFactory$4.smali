.class final Lcom/facebook/apache/commons/logging/LogFactory$4;
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
    .line 1384
    iput-object p1, p0, Lcom/facebook/apache/commons/logging/LogFactory$4;->a:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lcom/facebook/apache/commons/logging/LogFactory$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1387
    :try_start_0
    iget-object v1, p0, Lcom/facebook/apache/commons/logging/LogFactory$4;->a:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_1

    .line 1388
    iget-object v1, p0, Lcom/facebook/apache/commons/logging/LogFactory$4;->a:Ljava/lang/ClassLoader;

    iget-object v2, p0, Lcom/facebook/apache/commons/logging/LogFactory$4;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 1403
    :cond_0
    :goto_0
    return-object v0

    .line 1390
    :cond_1
    iget-object v1, p0, Lcom/facebook/apache/commons/logging/LogFactory$4;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 1392
    :catch_0
    move-exception v1

    .line 1393
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1394
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception while trying to find configuration file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/facebook/apache/commons/logging/LogFactory$4;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/apache/commons/logging/LogFactory;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1403
    :catch_1
    move-exception v1

    goto :goto_0
.end method
