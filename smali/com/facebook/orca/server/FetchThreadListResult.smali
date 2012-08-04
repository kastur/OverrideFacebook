.class public Lcom/facebook/orca/server/FetchThreadListResult;
.super Lcom/facebook/orca/server/BaseResult;
.source "FetchThreadListResult.java"

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
            "Lcom/facebook/orca/server/FetchThreadListResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/orca/threads/FolderName;

.field private final b:Lcom/facebook/orca/threads/ThreadsCollection;

.field private final c:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/orca/threads/FolderCounts;

.field private final g:Lcom/facebook/orca/notify/NotificationSetting;

.field private final h:Z

.field private final i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/facebook/orca/server/FetchThreadListResult$1;

    invoke-direct {v0}, Lcom/facebook/orca/server/FetchThreadListResult$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/server/FetchThreadListResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/BaseResult;-><init>(Landroid/os/Parcel;)V

    .line 85
    const-class v0, Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/FolderName;

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->a:Lcom/facebook/orca/threads/FolderName;

    .line 86
    const-class v0, Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadsCollection;

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->b:Lcom/facebook/orca/threads/ThreadsCollection;

    .line 87
    const-class v0, Lcom/facebook/orca/users/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->c:Lcom/google/common/collect/ImmutableList;

    .line 88
    const-class v0, Lcom/facebook/orca/threads/FolderCounts;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/FolderCounts;

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->f:Lcom/facebook/orca/threads/FolderCounts;

    .line 89
    const-class v0, Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/NotificationSetting;

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->g:Lcom/facebook/orca/notify/NotificationSetting;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->d:Lcom/google/common/collect/ImmutableList;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->e:Lcom/google/common/collect/ImmutableList;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->h:Z

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->i:J

    .line 94
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/FetchThreadListResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/ThreadsCollection;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/threads/FolderCounts;Lcom/facebook/orca/notify/NotificationSetting;ZJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
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
            "Lcom/facebook/orca/threads/FolderName;",
            "Lcom/facebook/orca/threads/ThreadsCollection;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/orca/threads/FolderCounts;",
            "Lcom/facebook/orca/notify/NotificationSetting;",
            "ZJJ)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p10, p11}, Lcom/facebook/orca/server/BaseResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;J)V

    .line 44
    iput-object p2, p0, Lcom/facebook/orca/server/FetchThreadListResult;->a:Lcom/facebook/orca/threads/FolderName;

    .line 45
    iput-object p3, p0, Lcom/facebook/orca/server/FetchThreadListResult;->b:Lcom/facebook/orca/threads/ThreadsCollection;

    .line 46
    iput-object p4, p0, Lcom/facebook/orca/server/FetchThreadListResult;->c:Lcom/google/common/collect/ImmutableList;

    .line 47
    iput-object p5, p0, Lcom/facebook/orca/server/FetchThreadListResult;->d:Lcom/google/common/collect/ImmutableList;

    .line 48
    iput-object p6, p0, Lcom/facebook/orca/server/FetchThreadListResult;->e:Lcom/google/common/collect/ImmutableList;

    .line 49
    iput-object p7, p0, Lcom/facebook/orca/server/FetchThreadListResult;->f:Lcom/facebook/orca/threads/FolderCounts;

    .line 50
    iput-object p8, p0, Lcom/facebook/orca/server/FetchThreadListResult;->g:Lcom/facebook/orca/notify/NotificationSetting;

    .line 51
    iput-boolean p9, p0, Lcom/facebook/orca/server/FetchThreadListResult;->h:Z

    .line 52
    iput-wide p12, p0, Lcom/facebook/orca/server/FetchThreadListResult;->i:J

    .line 53
    return-void
.end method

.method public static a(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/ThreadsCollection;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/threads/FolderCounts;Lcom/facebook/orca/notify/NotificationSetting;JJ)Lcom/facebook/orca/server/FetchThreadListResult;
    .locals 14
    .parameter
    .parameter
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
            "Lcom/facebook/orca/threads/FolderName;",
            "Lcom/facebook/orca/threads/ThreadsCollection;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;",
            "Lcom/facebook/orca/threads/FolderCounts;",
            "Lcom/facebook/orca/notify/NotificationSetting;",
            "JJ)",
            "Lcom/facebook/orca/server/FetchThreadListResult;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/facebook/orca/server/FetchThreadListResult;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-direct/range {v0 .. v13}, Lcom/facebook/orca/server/FetchThreadListResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/ThreadsCollection;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/threads/FolderCounts;Lcom/facebook/orca/notify/NotificationSetting;ZJJ)V

    return-object v0
.end method

.method public static a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/server/FetchThreadListResult;
    .locals 14
    .parameter

    .prologue
    const-wide/16 v10, -0x1

    const/4 v3, 0x0

    .line 79
    new-instance v0, Lcom/facebook/orca/server/FetchThreadListResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;

    const/4 v9, 0x0

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-wide v12, v10

    invoke-direct/range {v0 .. v13}, Lcom/facebook/orca/server/FetchThreadListResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/ThreadsCollection;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/threads/FolderCounts;Lcom/facebook/orca/notify/NotificationSetting;ZJJ)V

    return-object v0
.end method


# virtual methods
.method public final c()Lcom/facebook/orca/threads/FolderName;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->a:Lcom/facebook/orca/threads/FolderName;

    return-object v0
.end method

.method public final d()Lcom/facebook/orca/threads/ThreadsCollection;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->b:Lcom/facebook/orca/threads/ThreadsCollection;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 145
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
    .line 105
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->c:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public final f()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->d:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public final g()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->e:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public final h()Lcom/facebook/orca/threads/FolderCounts;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->f:Lcom/facebook/orca/threads/FolderCounts;

    return-object v0
.end method

.method public final i()Lcom/facebook/orca/notify/NotificationSetting;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->g:Lcom/facebook/orca/notify/NotificationSetting;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->h:Z

    return v0
.end method

.method public final k()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->i:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Lcom/facebook/orca/server/BaseResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 151
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->a:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 152
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->b:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 153
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 154
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 155
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->e:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 156
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->f:Lcom/facebook/orca/threads/FolderCounts;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 157
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->g:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 158
    iget-boolean v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-wide v0, p0, Lcom/facebook/orca/server/FetchThreadListResult;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 160
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
