.class Lcom/google/common/collect/CustomConcurrentHashMap$StrongExpirableEvictableEntry;
.super Lcom/google/common/collect/CustomConcurrentHashMap$StrongEntry;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CustomConcurrentHashMap$StrongEntry",
        "<TK;TV;>;",
        "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private volatile a:J

.field private b:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field private c:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field private d:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field private e:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 2
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>;TK;I",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1027
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/CustomConcurrentHashMap$StrongEntry;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1032
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->a:J

    .line 1042
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->g()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->b:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1053
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->g()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->c:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1066
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->g()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->d:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1077
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->g()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->e:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1028
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 1035
    iget-wide v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->a:J

    return-wide v0
.end method

.method public getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->d:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public getNextExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->b:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->e:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->c:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .locals 0
    .parameter

    .prologue
    .line 1039
    iput-wide p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->a:J

    .line 1040
    return-void
.end method

.method public setNextEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->d:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1075
    return-void
.end method

.method public setNextExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->b:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1051
    return-void
.end method

.method public setPreviousEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->e:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1086
    return-void
.end method

.method public setPreviousExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1061
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->c:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1062
    return-void
.end method
