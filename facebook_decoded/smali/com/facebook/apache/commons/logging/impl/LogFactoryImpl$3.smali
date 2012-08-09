.class Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl$3;
.super Ljava/lang/Object;
.source "LogFactoryImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private synthetic a:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 701
    iput-object p2, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl$3;->a:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl$3;->a:Ljava/lang/ClassLoader;

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
