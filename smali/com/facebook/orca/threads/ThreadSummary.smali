.class public Lcom/facebook/orca/threads/ThreadSummary;
.super Ljava/lang/Object;
.source "ThreadSummary.java"

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
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Z

.field private final j:Lcom/facebook/orca/users/UserKey;

.field private final k:J

.field private final l:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Lcom/facebook/orca/threads/ParticipantInfo;

.field private final p:Ljava/lang/String;

.field private final q:Landroid/net/Uri;

.field private final r:Z

.field private final s:Z

.field private final t:Z

.field private final u:Z

.field private final v:Lcom/facebook/orca/threads/FolderName;

.field private final w:Lcom/facebook/orca/compose/MessageDraft;

.field private final x:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 276
    new-instance v0, Lcom/facebook/orca/threads/ThreadSummary$1;

    invoke-direct {v0}, Lcom/facebook/orca/threads/ThreadSummary$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/threads/ThreadSummary;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->a:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/facebook/orca/threads/ThreadSummary;->b:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/facebook/orca/threads/ThreadSummary;->c:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/facebook/orca/threads/ThreadSummary;->d:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->e:Ljava/lang/String;

    .line 88
    sget-object v0, Lcom/facebook/orca/threads/ThreadParticipant;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->f:Lcom/google/common/collect/ImmutableList;

    .line 89
    sget-object v0, Lcom/facebook/orca/threads/ThreadParticipant;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->g:Lcom/google/common/collect/ImmutableList;

    .line 90
    sget-object v0, Lcom/facebook/orca/threads/ParticipantInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->h:Lcom/google/common/collect/ImmutableList;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->i:Z

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/users/UserKey;->a(Ljava/lang/String;)Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->j:Lcom/facebook/orca/users/UserKey;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/facebook/orca/threads/ThreadSummary;->k:J

    .line 94
    sget-object v0, Lcom/facebook/orca/threads/ParticipantInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->l:Lcom/google/common/collect/ImmutableList;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->m:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->n:Ljava/lang/String;

    .line 97
    const-class v0, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->o:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->p:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->q:Landroid/net/Uri;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->r:Z

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->s:Z

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->t:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    iput-boolean v1, p0, Lcom/facebook/orca/threads/ThreadSummary;->u:Z

    .line 104
    const-class v0, Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/FolderName;

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->v:Lcom/facebook/orca/threads/FolderName;

    .line 105
    const-class v0, Lcom/facebook/orca/compose/MessageDraft;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/compose/MessageDraft;

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->w:Lcom/facebook/orca/compose/MessageDraft;

    .line 106
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->f:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Lcom/facebook/orca/threads/ThreadSummary;->g:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0, v1}, Lcom/facebook/orca/threads/ThreadSummary;->a(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->x:Lcom/google/common/collect/ImmutableMap;

    .line 107
    return-void

    :cond_0
    move v0, v2

    .line 91
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 100
    goto :goto_1

    :cond_2
    move v0, v2

    .line 101
    goto :goto_2

    :cond_3
    move v0, v2

    .line 102
    goto :goto_3

    :cond_4
    move v1, v2

    .line 103
    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/facebook/orca/threads/ThreadSummary;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/orca/threads/ThreadSummaryBuilder;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->v()Lcom/facebook/orca/threads/FolderName;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->a:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->b:J

    .line 58
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->c:J

    .line 59
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->d:J

    .line 60
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->e:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->h()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->f:Lcom/google/common/collect/ImmutableList;

    .line 62
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->i()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->g:Lcom/google/common/collect/ImmutableList;

    .line 63
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->j()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->h:Lcom/google/common/collect/ImmutableList;

    .line 64
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->i:Z

    .line 65
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->g()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->j:Lcom/facebook/orca/users/UserKey;

    .line 66
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->k:J

    .line 67
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->o()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->l:Lcom/google/common/collect/ImmutableList;

    .line 68
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->m:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->n:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->m()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->o:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 71
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->p:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->q()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->q:Landroid/net/Uri;

    .line 73
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->r()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->r:Z

    .line 74
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->s()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->s:Z

    .line 75
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->t:Z

    .line 76
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->u()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->u:Z

    .line 77
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->v()Lcom/facebook/orca/threads/FolderName;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->v:Lcom/facebook/orca/threads/FolderName;

    .line 78
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->w()Lcom/facebook/orca/compose/MessageDraft;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->w:Lcom/facebook/orca/compose/MessageDraft;

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->f:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Lcom/facebook/orca/threads/ThreadSummary;->g:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0, v1}, Lcom/facebook/orca/threads/ThreadSummary;->a(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->x:Lcom/google/common/collect/ImmutableMap;

    .line 80
    return-void
.end method

.method private static a(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableMap;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v1

    .line 114
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 115
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 118
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 120
    :cond_1
    invoke-static {v1}, Lcom/google/common/collect/ImmutableMap;->a(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final A()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Lcom/facebook/orca/threads/ThreadSummary$MergedList;

    iget-object v1, p0, Lcom/facebook/orca/threads/ThreadSummary;->f:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Lcom/facebook/orca/threads/ThreadSummary;->g:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/threads/ThreadSummary$MergedList;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public final a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/ThreadParticipant;
    .locals 1
    .parameter

    .prologue
    .line 240
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threads/ThreadSummary;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadParticipant;
    .locals 1
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->x:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->b:J

    return-wide v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->c:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->d:J

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->i:Z

    return v0
.end method

.method public final h()Lcom/facebook/orca/users/UserKey;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->j:Lcom/facebook/orca/users/UserKey;

    return-object v0
.end method

.method public final i()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->f:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public final j()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->h:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public final k()J
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->k:J

    return-wide v0
.end method

.method public final l()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->l:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->o:Lcom/facebook/orca/threads/ParticipantInfo;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->q:Landroid/net/Uri;

    return-object v0
.end method

.method public final s()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->q:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->r:Z

    return v0
.end method

.method public final u()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->s:Z

    return v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->t:Z

    return v0
.end method

.method public final w()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->u:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 294
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-wide v3, p0, Lcom/facebook/orca/threads/ThreadSummary;->b:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 296
    iget-wide v3, p0, Lcom/facebook/orca/threads/ThreadSummary;->c:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 297
    iget-wide v3, p0, Lcom/facebook/orca/threads/ThreadSummary;->d:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 298
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->f:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 300
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->g:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 301
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->h:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 302
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->i:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->j:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-wide v3, p0, Lcom/facebook/orca/threads/ThreadSummary;->k:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 305
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->l:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 306
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->o:Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 309
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->q:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 311
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->r:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->s:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->t:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->u:Z

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->v:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 316
    return-void

    :cond_0
    move v0, v2

    .line 302
    goto :goto_0

    :cond_1
    move v0, v2

    .line 311
    goto :goto_1

    :cond_2
    move v0, v2

    .line 312
    goto :goto_2

    :cond_3
    move v0, v2

    .line 313
    goto :goto_3

    :cond_4
    move v1, v2

    .line 314
    goto :goto_4
.end method

.method public final x()Lcom/facebook/orca/threads/FolderName;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->v:Lcom/facebook/orca/threads/FolderName;

    return-object v0
.end method

.method public final y()Lcom/facebook/orca/compose/MessageDraft;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->w:Lcom/facebook/orca/compose/MessageDraft;

    return-object v0
.end method

.method public final z()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummary;->g:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method
