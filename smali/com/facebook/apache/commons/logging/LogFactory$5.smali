.class final Lcom/facebook/apache/commons/logging/LogFactory$5;
.super Ljava/lang/Object;
.source "LogFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private synthetic a:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 0
    .parameter

    .prologue
    .line 1421
    iput-object p1, p0, Lcom/facebook/apache/commons/logging/LogFactory$5;->a:Ljava/net/URL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1424
    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/commons/logging/LogFactory$5;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1425
    if-eqz v1, :cond_0

    .line 1426
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 1427
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1428
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1437
    :goto_0
    return-object v0

    .line 1431
    :catch_0
    move-exception v0

    .line 1432
    invoke-static {}, Lcom/facebook/apache/commons/logging/LogFactory;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to read URL "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/apache/commons/logging/LogFactory$5;->a:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->d(Ljava/lang/String;)V

    .line 1437
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
