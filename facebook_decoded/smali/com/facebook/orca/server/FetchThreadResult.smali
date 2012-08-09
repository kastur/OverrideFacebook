.class public Lcom/facebook/orca/server/FetchThreadResult;
.super Lcom/facebook/orca/server/BaseResult;
.source "FetchThreadResult.java"

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
            "Lcom/facebook/orca/server/FetchThreadResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lcom/facebook/orca/server/FetchThreadResult;


# instance fields
.field private final b:Lcom/facebook/orca/threads/ThreadSummary;

.field private final c:Lcom/facebook/orca/threads/MessagesCollection;

.field private final d:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/orca/users/User;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/facebook/orca/server/FetchThreadResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;

    const-wide/16 v6, -0x1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/users/User;J)V

    sput-object v0, Lcom/facebook/orca/server/FetchThreadResult;->a:Lcom/facebook/orca/server/FetchThreadResult;

    .line 75
    new-instance v0, Lcom/facebook/orca/server/FetchThreadResult$1;

    invoke-direct {v0}, Lcom/facebook/orca/server/FetchThreadResult$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/server/FetchThreadResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/BaseResult;-><init>(Landroid/os/Parcel;)V

    .line 53
    const-class v0, Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadResult;->b:Lcom/facebook/orca/threads/ThreadSummary;

    .line 54
    const-class v0, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/MessagesCollection;

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadResult;->c:Lcom/facebook/orca/threads/MessagesCollection;

    .line 55
    const-class v0, Lcom/facebook/orca/users/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadResult;->d:Lcom/google/common/collect/ImmutableList;

    .line 56
    const-class v0, Lcom/facebook/orca/users/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadResult;->e:Lcom/facebook/orca/users/User;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/server/FetchThreadResult;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->d()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v3

    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->f()Lcom/facebook/orca/users/User;

    move-result-object v5

    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->b()J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/users/User;J)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/users/User;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/server/DataFreshnessResult;",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            "Lcom/facebook/orca/threads/MessagesCollection;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;",
            "Lcom/facebook/orca/users/User;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p6, p7}, Lcom/facebook/orca/server/BaseResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;J)V

    .line 35
    iput-object p2, p0, Lcom/facebook/orca/server/FetchThreadResult;->b:Lcom/facebook/orca/threads/ThreadSummary;

    .line 36
    iput-object p3, p0, Lcom/facebook/orca/server/FetchThreadResult;->c:Lcom/facebook/orca/threads/MessagesCollection;

    .line 37
    iput-object p4, p0, Lcom/facebook/orca/server/FetchThreadResult;->d:Lcom/google/common/collect/ImmutableList;

    .line 38
    iput-object p5, p0, Lcom/facebook/orca/server/FetchThreadResult;->e:Lcom/facebook/orca/users/User;

    .line 39
    return-void
.end method


# virtual methods
.method public final c()Lcom/facebook/orca/threads/ThreadSummary;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadResult;->b:Lcom/facebook/orca/threads/ThreadSummary;

    return-object v0
.end method

.method public final d()Lcom/facebook/orca/threads/MessagesCollection;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadResult;->c:Lcom/facebook/orca/threads/MessagesCollection;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadResult;->d:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public final f()Lcom/facebook/orca/users/User;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadResult;->e:Lcom/facebook/orca/users/User;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lcom/facebook/orca/server/BaseResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 94
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadResult;->b:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 95
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadResult;->c:Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadResult;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadResult;->e:Lcom/facebook/orca/users/User;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 98
    return-void
.end method
