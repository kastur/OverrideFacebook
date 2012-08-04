.class public Lcom/facebook/orca/threads/ThreadParticipant;
.super Ljava/lang/Object;
.source "ThreadParticipant.java"

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
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/orca/threads/ParticipantInfo;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/facebook/orca/notify/NotificationSetting;

.field private final d:J

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/facebook/orca/threads/ThreadParticipant$1;

    invoke-direct {v0}, Lcom/facebook/orca/threads/ThreadParticipant$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/threads/ThreadParticipant;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-class v0, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->b:Ljava/lang/String;

    .line 35
    const-class v0, Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/NotificationSetting;

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->c:Lcom/facebook/orca/notify/NotificationSetting;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->d:J

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->e:Ljava/lang/String;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/facebook/orca/threads/ThreadParticipant;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/orca/threads/ThreadParticipantBuilder;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 26
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->b:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->c()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->c:Lcom/facebook/orca/notify/NotificationSetting;

    .line 28
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->d:J

    .line 29
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->e:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->b()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->c()Z

    move-result v0

    return v0
.end method

.method public final d()Lcom/facebook/orca/users/UserKey;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Lcom/facebook/orca/notify/NotificationSetting;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->c:Lcom/facebook/orca/notify/NotificationSetting;

    return-object v0
.end method

.method public final i()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->d:J

    return-wide v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->e:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->c:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 101
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    return-void
.end method
