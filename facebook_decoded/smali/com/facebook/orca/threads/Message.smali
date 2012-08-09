.class public Lcom/facebook/orca/threads/Message;
.super Ljava/lang/Object;
.source "Message.java"

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
            "Lcom/facebook/orca/threads/Message;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:J

.field private final e:Lcom/facebook/orca/threads/ParticipantInfo;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:J

.field private final i:Lcom/facebook/orca/location/Coordinates;

.field private final j:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/AttachmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/share/Share;",
            ">;"
        }
    .end annotation
.end field

.field private final l:I

.field private final m:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/lang/String;

.field private final o:Z

.field private final p:Ljava/lang/String;

.field private final q:Lcom/facebook/orca/threads/Message$ChannelSource;

.field private final r:Lcom/facebook/orca/attachments/MediaResource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lcom/facebook/orca/threads/Message$1;

    invoke-direct {v0}, Lcom/facebook/orca/threads/Message$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/threads/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->a:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->b:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/Message;->c:J

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/Message;->d:J

    .line 96
    const-class v0, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->e:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->f:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->g:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/Message;->h:J

    .line 100
    const-class v0, Lcom/facebook/orca/location/Coordinates;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/location/Coordinates;

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->i:Lcom/facebook/orca/location/Coordinates;

    .line 101
    const-class v0, Lcom/facebook/orca/threads/AttachmentInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->j:Lcom/google/common/collect/ImmutableList;

    .line 102
    const-class v0, Lcom/facebook/orca/share/Share;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->k:Lcom/google/common/collect/ImmutableList;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threads/Message;->l:I

    .line 104
    const-class v0, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->m:Lcom/google/common/collect/ImmutableList;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->n:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/orca/threads/Message;->o:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->p:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/Message$ChannelSource;->valueOf(Ljava/lang/String;)Lcom/facebook/orca/threads/Message$ChannelSource;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->q:Lcom/facebook/orca/threads/Message$ChannelSource;

    .line 109
    const-class v0, Lcom/facebook/orca/attachments/MediaResource;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/MediaResource;

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->r:Lcom/facebook/orca/attachments/MediaResource;

    .line 110
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/facebook/orca/threads/Message;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/orca/threads/MessageBuilder;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->a:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->b:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/Message;->c:J

    .line 74
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/Message;->d:J

    .line 75
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->e()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->e:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 76
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->f:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->g:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/Message;->h:J

    .line 79
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->i()Lcom/facebook/orca/location/Coordinates;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->i:Lcom/facebook/orca/location/Coordinates;

    .line 80
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->j()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->j:Lcom/google/common/collect/ImmutableList;

    .line 81
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->k()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->k:Lcom/google/common/collect/ImmutableList;

    .line 82
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->l()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threads/Message;->l:I

    .line 83
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->m()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->m:Lcom/google/common/collect/ImmutableList;

    .line 84
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->n:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->o()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/Message;->o:Z

    .line 86
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->p:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->q()Lcom/facebook/orca/threads/Message$ChannelSource;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->q:Lcom/facebook/orca/threads/Message$ChannelSource;

    .line 88
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessageBuilder;->r()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/Message;->r:Lcom/facebook/orca/attachments/MediaResource;

    .line 89
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/facebook/orca/threads/Message;->c:J

    return-wide v0
.end method

.method public final d()Z
    .locals 4

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/facebook/orca/threads/Message;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/facebook/orca/threads/Message;->d:J

    return-wide v0
.end method

.method public final f()Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->e:Lcom/facebook/orca/threads/ParticipantInfo;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Lcom/facebook/orca/location/Coordinates;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->i:Lcom/facebook/orca/location/Coordinates;

    return-object v0
.end method

.method public final k()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/AttachmentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->j:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public final l()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/share/Share;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->k:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->i:Lcom/facebook/orca/location/Coordinates;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/facebook/orca/threads/Message;->h:J

    return-wide v0
.end method

.method public final o()Z
    .locals 2

    .prologue
    .line 173
    iget v0, p0, Lcom/facebook/orca/threads/Message;->l:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/orca/threads/Message;->l:I

    const/16 v1, 0x384

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/orca/threads/Message;->l:I

    const/16 v1, 0x385

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/facebook/orca/threads/Message;->l:I

    return v0
.end method

.method public final q()Lcom/google/common/collect/ImmutableList;
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
    .line 183
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->m:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->n:Ljava/lang/String;

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

.method public final t()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/facebook/orca/threads/Message;->o:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->v()Lcom/facebook/orca/threads/Message$ChannelSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, " t: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/facebook/orca/threads/Message;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 261
    const-string v1, " st: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/facebook/orca/threads/Message;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 262
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->g()Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    const-string v1, "[empty]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 266
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_2

    .line 267
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final v()Lcom/facebook/orca/threads/Message$ChannelSource;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->q:Lcom/facebook/orca/threads/Message$ChannelSource;

    return-object v0
.end method

.method public final w()Lcom/facebook/orca/attachments/MediaResource;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->r:Lcom/facebook/orca/attachments/MediaResource;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-wide v0, p0, Lcom/facebook/orca/threads/Message;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 235
    iget-wide v0, p0, Lcom/facebook/orca/threads/Message;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 236
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->e:Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 237
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-wide v0, p0, Lcom/facebook/orca/threads/Message;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 240
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->i:Lcom/facebook/orca/location/Coordinates;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 241
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->j:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 242
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->k:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 243
    iget v0, p0, Lcom/facebook/orca/threads/Message;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->m:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 245
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-boolean v0, p0, Lcom/facebook/orca/threads/Message;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->q:Lcom/facebook/orca/threads/Message$ChannelSource;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message$ChannelSource;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->r:Lcom/facebook/orca/attachments/MediaResource;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 250
    return-void

    .line 246
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final x()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/facebook/orca/threads/Message;->r:Lcom/facebook/orca/attachments/MediaResource;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
