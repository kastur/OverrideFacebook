.class final Lcom/facebook/apache/commons/logging/LogFactory$6;
.super Ljava/lang/Object;
.source "LogFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1559
    iput-object p1, p0, Lcom/facebook/apache/commons/logging/LogFactory$6;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/apache/commons/logging/LogFactory$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/facebook/apache/commons/logging/LogFactory$6;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/apache/commons/logging/LogFactory$6;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
