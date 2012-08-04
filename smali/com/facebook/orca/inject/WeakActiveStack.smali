.class Lcom/facebook/orca/inject/WeakActiveStack;
.super Ljava/lang/Object;
.source "WeakActiveStack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/orca/inject/WeakActiveStack$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/orca/inject/WeakActiveStack$Node",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/facebook/orca/inject/WeakActiveStack$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/orca/inject/WeakActiveStack$Node",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private a(Lcom/facebook/orca/inject/WeakActiveStack$Node;)Lcom/facebook/orca/inject/WeakActiveStack$Node;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/inject/WeakActiveStack$Node",
            "<TT;>;)",
            "Lcom/facebook/orca/inject/WeakActiveStack$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/facebook/orca/inject/WeakActiveStack;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    if-ne p1, v0, :cond_0

    .line 157
    iget-object v0, p1, Lcom/facebook/orca/inject/WeakActiveStack$Node;->b:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    iput-object v0, p0, Lcom/facebook/orca/inject/WeakActiveStack;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    .line 158
    iget-object v0, p0, Lcom/facebook/orca/inject/WeakActiveStack;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    if-nez v0, :cond_4

    .line 159
    iput-object v2, p0, Lcom/facebook/orca/inject/WeakActiveStack;->b:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    .line 165
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/facebook/orca/inject/WeakActiveStack$Node;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p1, Lcom/facebook/orca/inject/WeakActiveStack$Node;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    iget-object v1, p1, Lcom/facebook/orca/inject/WeakActiveStack$Node;->b:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    iput-object v1, v0, Lcom/facebook/orca/inject/WeakActiveStack$Node;->b:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    .line 169
    :cond_1
    iget-object v0, p1, Lcom/facebook/orca/inject/WeakActiveStack$Node;->b:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p1, Lcom/facebook/orca/inject/WeakActiveStack$Node;->b:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    iget-object v1, p1, Lcom/facebook/orca/inject/WeakActiveStack$Node;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    iput-object v1, v0, Lcom/facebook/orca/inject/WeakActiveStack$Node;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/inject/WeakActiveStack;->b:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    if-ne p1, v0, :cond_3

    .line 174
    iget-object v0, p1, Lcom/facebook/orca/inject/WeakActiveStack$Node;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    iput-object v0, p0, Lcom/facebook/orca/inject/WeakActiveStack;->b:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    .line 175
    iget-object v0, p0, Lcom/facebook/orca/inject/WeakActiveStack;->b:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    iput-object v2, v0, Lcom/facebook/orca/inject/WeakActiveStack$Node;->b:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    .line 178
    :cond_3
    iget-object v0, p1, Lcom/facebook/orca/inject/WeakActiveStack$Node;->b:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    return-object v0

    .line 161
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/inject/WeakActiveStack;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    iput-object v2, v0, Lcom/facebook/orca/inject/WeakActiveStack$Node;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    goto :goto_0
.end method

.method private c(Ljava/lang/Object;)Lcom/facebook/orca/inject/WeakActiveStack$Node;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/facebook/orca/inject/WeakActiveStack$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/facebook/orca/inject/WeakActiveStack;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    .line 190
    :goto_0
    if-eqz v0, :cond_2

    .line 191
    iget-object v1, v0, Lcom/facebook/orca/inject/WeakActiveStack$Node;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 192
    if-nez v1, :cond_0

    .line 193
    invoke-direct {p0, v0}, Lcom/facebook/orca/inject/WeakActiveStack;->a(Lcom/facebook/orca/inject/WeakActiveStack$Node;)Lcom/facebook/orca/inject/WeakActiveStack$Node;

    move-result-object v0

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    :goto_1
    return-object v0

    .line 197
    :cond_1
    iget-object v0, v0, Lcom/facebook/orca/inject/WeakActiveStack$Node;->b:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    goto :goto_0

    .line 200
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/orca/inject/WeakActiveStack;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    move-object v1, v0

    .line 128
    :goto_0
    if-eqz v1, :cond_0

    .line 129
    iget-object v0, v1, Lcom/facebook/orca/inject/WeakActiveStack$Node;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 130
    if-nez v0, :cond_1

    .line 131
    invoke-direct {p0, v1}, Lcom/facebook/orca/inject/WeakActiveStack;->a(Lcom/facebook/orca/inject/WeakActiveStack$Node;)Lcom/facebook/orca/inject/WeakActiveStack$Node;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 135
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/inject/WeakActiveStack;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    if-nez v0, :cond_1

    .line 60
    new-instance v0, Lcom/facebook/orca/inject/WeakActiveStack$Node;

    invoke-direct {v0, p1}, Lcom/facebook/orca/inject/WeakActiveStack$Node;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/orca/inject/WeakActiveStack;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    .line 61
    iget-object v0, p0, Lcom/facebook/orca/inject/WeakActiveStack;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    iput-object v0, p0, Lcom/facebook/orca/inject/WeakActiveStack;->b:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/orca/inject/WeakActiveStack;->c(Ljava/lang/Object;)Lcom/facebook/orca/inject/WeakActiveStack$Node;

    move-result-object v0

    .line 64
    if-nez v0, :cond_2

    .line 65
    new-instance v0, Lcom/facebook/orca/inject/WeakActiveStack$Node;

    invoke-direct {v0, p1}, Lcom/facebook/orca/inject/WeakActiveStack$Node;-><init>(Ljava/lang/Object;)V

    .line 66
    iget-object v1, p0, Lcom/facebook/orca/inject/WeakActiveStack;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    iput-object v1, v0, Lcom/facebook/orca/inject/WeakActiveStack$Node;->b:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    .line 67
    iget-object v1, p0, Lcom/facebook/orca/inject/WeakActiveStack;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    iput-object v0, v1, Lcom/facebook/orca/inject/WeakActiveStack$Node;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    .line 68
    iput-object v0, p0, Lcom/facebook/orca/inject/WeakActiveStack;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    goto :goto_0

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/inject/WeakActiveStack;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    if-eq v0, v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/facebook/orca/inject/WeakActiveStack;->b:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    if-ne v0, v1, :cond_3

    .line 73
    iget-object v1, v0, Lcom/facebook/orca/inject/WeakActiveStack$Node;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    iput-object v1, p0, Lcom/facebook/orca/inject/WeakActiveStack;->b:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    .line 74
    iget-object v1, p0, Lcom/facebook/orca/inject/WeakActiveStack;->b:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    iput-object v3, v1, Lcom/facebook/orca/inject/WeakActiveStack$Node;->b:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    .line 77
    :cond_3
    iget-object v1, v0, Lcom/facebook/orca/inject/WeakActiveStack$Node;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    if-eqz v1, :cond_4

    .line 78
    iget-object v1, v0, Lcom/facebook/orca/inject/WeakActiveStack$Node;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    iget-object v2, v0, Lcom/facebook/orca/inject/WeakActiveStack$Node;->b:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    iput-object v2, v1, Lcom/facebook/orca/inject/WeakActiveStack$Node;->b:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    .line 81
    :cond_4
    iget-object v1, v0, Lcom/facebook/orca/inject/WeakActiveStack$Node;->b:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    if-eqz v1, :cond_5

    .line 82
    iget-object v1, v0, Lcom/facebook/orca/inject/WeakActiveStack$Node;->b:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    iget-object v2, v0, Lcom/facebook/orca/inject/WeakActiveStack$Node;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    iput-object v2, v1, Lcom/facebook/orca/inject/WeakActiveStack$Node;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    .line 85
    :cond_5
    iget-object v1, p0, Lcom/facebook/orca/inject/WeakActiveStack;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    iput-object v1, v0, Lcom/facebook/orca/inject/WeakActiveStack$Node;->b:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    .line 86
    iget-object v1, p0, Lcom/facebook/orca/inject/WeakActiveStack;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    iput-object v0, v1, Lcom/facebook/orca/inject/WeakActiveStack$Node;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    .line 87
    iput-object v0, p0, Lcom/facebook/orca/inject/WeakActiveStack;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    .line 88
    iget-object v0, p0, Lcom/facebook/orca/inject/WeakActiveStack;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    iput-object v3, v0, Lcom/facebook/orca/inject/WeakActiveStack$Node;->a:Lcom/facebook/orca/inject/WeakActiveStack$Node;

    goto :goto_0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/facebook/orca/inject/WeakActiveStack;->c(Ljava/lang/Object;)Lcom/facebook/orca/inject/WeakActiveStack$Node;

    move-result-object v0

    .line 146
    invoke-direct {p0, v0}, Lcom/facebook/orca/inject/WeakActiveStack;->a(Lcom/facebook/orca/inject/WeakActiveStack$Node;)Lcom/facebook/orca/inject/WeakActiveStack$Node;

    .line 147
    return-void
.end method
