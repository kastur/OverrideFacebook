.class public Lcom/facebook/katana/util/jsonmirror/types/JMDynamicKeysDict;
.super Lcom/facebook/katana/util/jsonmirror/types/JMDict;
.source "JMDynamicKeysDict.java"


# instance fields
.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private d:Lcom/facebook/katana/util/jsonmirror/types/JMBase;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/types/JMDict;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/facebook/katana/util/jsonmirror/types/JMDynamicKeysDict;->c:Ljava/lang/Class;

    .line 25
    invoke-static {p1}, Lcom/facebook/katana/util/jsonmirror/JMAutogen;->c(Ljava/lang/Class;)Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/util/jsonmirror/types/JMDynamicKeysDict;->d:Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    .line 26
    if-eqz p2, :cond_0

    .line 27
    const-class v0, Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/katana/util/jsonmirror/types/JMDynamicKeysDict;->c:Ljava/lang/Class;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 30
    iget-object v1, p0, Lcom/facebook/katana/util/jsonmirror/types/JMDynamicKeysDict;->d:Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Lcom/facebook/katana/util/jsonmirror/types/JMList;

    invoke-direct {v1, v0}, Lcom/facebook/katana/util/jsonmirror/types/JMList;-><init>(Ljava/util/Set;)V

    iput-object v1, p0, Lcom/facebook/katana/util/jsonmirror/types/JMDynamicKeysDict;->d:Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/facebook/katana/util/Tuple;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/katana/util/Tuple",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/facebook/katana/util/Tuple;

    iget-object v1, p0, Lcom/facebook/katana/util/jsonmirror/types/JMDynamicKeysDict;->d:Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    invoke-direct {v0, p1, v1}, Lcom/facebook/katana/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/util/Tuple",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final b()Lcom/facebook/katana/util/jsonmirror/JMDictDestination;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/facebook/katana/util/jsonmirror/JMDynamicKeysDictDestination;

    iget-object v1, p0, Lcom/facebook/katana/util/jsonmirror/types/JMDynamicKeysDict;->c:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/facebook/katana/util/jsonmirror/JMDynamicKeysDictDestination;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method
