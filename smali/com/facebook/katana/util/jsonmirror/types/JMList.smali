.class public Lcom/facebook/katana/util/jsonmirror/types/JMList;
.super Lcom/facebook/katana/util/jsonmirror/types/JMBase;
.source "JMList.java"


# instance fields
.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0, v0}, Lcom/facebook/katana/util/jsonmirror/types/JMList;-><init>(Ljava/util/Set;II)V

    .line 19
    return-void
.end method

.method private constructor <init>(Ljava/util/Set;II)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/types/JMBase;-><init>()V

    .line 32
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    move v3, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    .line 33
    instance-of v5, v0, Lcom/facebook/katana/util/jsonmirror/types/JMList;

    if-eqz v5, :cond_0

    .line 34
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 35
    :cond_0
    instance-of v5, v0, Lcom/facebook/katana/util/jsonmirror/types/JMDict;

    if-nez v5, :cond_1

    instance-of v5, v0, Lcom/facebook/katana/util/jsonmirror/types/JMSimpleDict;

    if-eqz v5, :cond_2

    .line 37
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 38
    :cond_2
    instance-of v0, v0, Lcom/facebook/katana/util/jsonmirror/types/JMString;

    if-eqz v0, :cond_7

    .line 39
    add-int/lit8 v0, v3, 0x1

    :goto_1
    move v3, v0

    goto :goto_0

    .line 43
    :cond_3
    if-le v2, v6, :cond_4

    .line 44
    new-instance v0, Lcom/facebook/katana/util/jsonmirror/JMFatalException;

    const-string v1, "We don\'t handle multiple types of child lists in the same list."

    invoke-direct {v0, v1}, Lcom/facebook/katana/util/jsonmirror/JMFatalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_4
    if-le v1, v6, :cond_5

    .line 47
    new-instance v0, Lcom/facebook/katana/util/jsonmirror/JMFatalException;

    const-string v1, "We don\'t handle multiple types of child dictionaries in the same list."

    invoke-direct {v0, v1}, Lcom/facebook/katana/util/jsonmirror/JMFatalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_5
    if-le v3, v6, :cond_6

    .line 50
    new-instance v0, Lcom/facebook/katana/util/jsonmirror/JMFatalException;

    const-string v1, "We don\'t handle multiple types of strings in the same list."

    invoke-direct {v0, v1}, Lcom/facebook/katana/util/jsonmirror/JMFatalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_6
    iput-object p1, p0, Lcom/facebook/katana/util/jsonmirror/types/JMList;->c:Ljava/util/Set;

    .line 55
    return-void

    :cond_7
    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/katana/util/jsonmirror/types/JMList;->c:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
