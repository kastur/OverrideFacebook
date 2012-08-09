.class Lcom/facebook/apache/commons/logging/impl/WeakHashtable$1;
.super Ljava/lang/Object;
.source "WeakHashtable.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private synthetic a:Ljava/util/Enumeration;


# direct methods
.method constructor <init>(Lcom/facebook/apache/commons/logging/impl/WeakHashtable;Ljava/util/Enumeration;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 189
    iput-object p2, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$1;->a:Ljava/util/Enumeration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$1;->a:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$1;->a:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;

    .line 195
    invoke-static {v0}, Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;->a(Lcom/facebook/apache/commons/logging/impl/WeakHashtable$Referenced;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
