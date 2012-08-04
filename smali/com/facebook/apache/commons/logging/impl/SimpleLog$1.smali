.class final Lcom/facebook/apache/commons/logging/impl/SimpleLog$1;
.super Ljava/lang/Object;
.source "SimpleLog.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Lcom/facebook/apache/commons/logging/impl/SimpleLog$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 710
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/SimpleLog;->a()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 712
    if-eqz v0, :cond_0

    .line 713
    iget-object v1, p0, Lcom/facebook/apache/commons/logging/impl/SimpleLog$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 715
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/commons/logging/impl/SimpleLog$1;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method
