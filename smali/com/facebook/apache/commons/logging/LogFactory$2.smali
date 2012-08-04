.class final Lcom/facebook/apache/commons/logging/LogFactory$2;
.super Ljava/lang/Object;
.source "LogFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/facebook/apache/commons/logging/LogFactory$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/apache/commons/logging/LogFactory$2;->b:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/facebook/apache/commons/logging/LogFactory$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/apache/commons/logging/LogFactory$2;->b:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lcom/facebook/apache/commons/logging/LogFactory;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
