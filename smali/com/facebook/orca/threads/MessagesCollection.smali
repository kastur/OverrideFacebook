.class public Lcom/facebook/orca/threads/MessagesCollection;
.super Ljava/lang/Object;
.source "MessagesCollection.java"

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
            "Lcom/facebook/orca/threads/MessagesCollection;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Lcom/facebook/orca/debug/WtfToken;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/facebook/orca/debug/WtfToken;

    invoke-direct {v0}, Lcom/facebook/orca/debug/WtfToken;-><init>()V

    sput-object v0, Lcom/facebook/orca/threads/MessagesCollection;->a:Lcom/facebook/orca/debug/WtfToken;

    .line 147
    new-instance v0, Lcom/facebook/orca/threads/MessagesCollection$1;

    invoke-direct {v0}, Lcom/facebook/orca/threads/MessagesCollection$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/threads/MessagesCollection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->b:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/facebook/orca/threads/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->c:Lcom/google/common/collect/ImmutableList;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->d:Z

    .line 40
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->c:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagesCollection;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 41
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/facebook/orca/threads/MessagesCollection;->b:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/facebook/orca/threads/MessagesCollection;->c:Lcom/google/common/collect/ImmutableList;

    .line 32
    iput-boolean p3, p0, Lcom/facebook/orca/threads/MessagesCollection;->d:Z

    .line 33
    invoke-static {p2}, Lcom/facebook/orca/threads/MessagesCollection;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 34
    return-void
.end method

.method public static a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/MessagesCollection;
    .locals 4
    .parameter

    .prologue
    .line 44
    new-instance v0, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    return-object v0
.end method

.method private static a(Lcom/google/common/collect/ImmutableList;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 51
    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v3, v0

    move-wide v8, v0

    move-wide v1, v8

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 54
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->t()Z

    move-result v6

    if-nez v6, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v6

    cmp-long v3, v6, v3

    if-lez v3, :cond_2

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagesCollection;->b(Lcom/facebook/orca/threads/Message;)J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-lez v1, :cond_2

    .line 62
    sget-object v0, Lcom/facebook/orca/threads/MessagesCollection;->a:Lcom/facebook/orca/debug/WtfToken;

    const-string v1, "orca:MessagesCollection"

    const-string v2, "Thread messages were not in order"

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_1
    return-void

    .line 65
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v2

    .line 66
    invoke-static {v0}, Lcom/facebook/orca/threads/MessagesCollection;->b(Lcom/facebook/orca/threads/Message;)J

    move-result-wide v0

    move-wide v8, v0

    move-wide v10, v2

    move-wide v3, v10

    move-wide v1, v8

    goto :goto_0
.end method

.method private static b(Lcom/facebook/orca/threads/Message;)J
    .locals 2
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/facebook/orca/threads/Message;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->c:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public final c()Lcom/facebook/orca/threads/Message;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->c:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->d:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 167
    iget-boolean v0, p0, Lcom/facebook/orca/threads/MessagesCollection;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
