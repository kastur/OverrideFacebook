.class final Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl$1;
.super Ljava/lang/Object;
.source "LogFactoryImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 667
    invoke-static {}, Lcom/facebook/apache/commons/logging/impl/LogFactoryImpl;->c()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
