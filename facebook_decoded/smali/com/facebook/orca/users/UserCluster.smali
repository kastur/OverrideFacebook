.class public Lcom/facebook/orca/users/UserCluster;
.super Ljava/lang/Object;
.source "UserCluster.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/users/UserCluster;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserInCluster;",
            ">;"
        }
    .end annotation
.end field

.field private final c:J

.field private final d:Lcom/facebook/orca/users/User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/facebook/orca/users/UserCluster;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 128
    new-instance v0, Lcom/facebook/orca/users/UserCluster$1;

    invoke-direct {v0}, Lcom/facebook/orca/users/UserCluster$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/users/UserCluster;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/facebook/orca/users/UserInCluster;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserCluster;->b:Lcom/google/common/collect/ImmutableList;

    .line 38
    sget-object v0, Lcom/facebook/orca/users/UserCluster;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/users/UserCluster;->c:J

    .line 39
    iget-object v0, p0, Lcom/facebook/orca/users/UserCluster;->b:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0}, Lcom/facebook/orca/users/UserCluster;->a(Lcom/google/common/collect/ImmutableList;)Lcom/facebook/orca/users/User;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserCluster;->d:Lcom/facebook/orca/users/User;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/facebook/orca/users/UserCluster;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static a(Lcom/google/common/collect/ImmutableList;)Lcom/facebook/orca/users/User;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserInCluster;",
            ">;)",
            "Lcom/facebook/orca/users/User;"
        }
    .end annotation

    .prologue
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserInCluster;

    .line 45
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserInCluster;->b()Lcom/facebook/orca/users/UserInCluster$MatchType;

    move-result-object v3

    sget-object v4, Lcom/facebook/orca/users/UserInCluster$MatchType;->PRIMARY:Lcom/facebook/orca/users/UserInCluster$MatchType;

    if-ne v3, v4, :cond_2

    .line 46
    if-eqz v1, :cond_1

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Multiple primary users in cluster"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserInCluster;->a()Lcom/facebook/orca/users/User;

    move-result-object v1

    .line 51
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserInCluster;->a()Lcom/facebook/orca/users/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserInCluster;->b()Lcom/facebook/orca/users/UserInCluster$MatchType;

    move-result-object v0

    sget-object v3, Lcom/facebook/orca/users/UserInCluster$MatchType;->PRIMARY:Lcom/facebook/orca/users/UserInCluster$MatchType;

    if-eq v0, v3, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Facebook user in cluster that isn\'t primary"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_3
    if-nez v1, :cond_4

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No primary user in cluster"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_4
    return-object v1
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserInCluster;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/orca/users/UserCluster;->b:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserCluster;->c()Lcom/facebook/orca/users/User;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/facebook/orca/users/User;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/orca/users/UserCluster;->d:Lcom/facebook/orca/users/User;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/users/UserCluster;->d:Lcom/facebook/orca/users/User;

    .line 101
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Lcom/facebook/orca/users/User;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/orca/users/UserCluster;->d:Lcom/facebook/orca/users/User;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserCluster;->d()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    const-string v0, "Cluster: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/facebook/orca/users/UserCluster;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v0, p0, Lcom/facebook/orca/users/UserCluster;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserInCluster;

    .line 154
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserInCluster;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/facebook/orca/users/UserCluster;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 147
    return-void
.end method
