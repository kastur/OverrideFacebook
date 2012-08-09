.class Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;
.super Ljava/lang/Object;
.source "FacebookStreamContainer.java"


# static fields
.field public static d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/lang/String;

.field b:Z

.field c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 335
    new-instance v0, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle$1;

    invoke-direct {v0}, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle$1;-><init>()V

    sput-object v0, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;->d:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p1, p0, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;->a:Ljava/lang/String;

    .line 318
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 323
    instance-of v0, p1, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;->a:Ljava/lang/String;

    check-cast p1, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;

    iget-object v1, p1, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
