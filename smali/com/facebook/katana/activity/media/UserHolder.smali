.class public Lcom/facebook/katana/activity/media/UserHolder;
.super Ljava/lang/Object;
.source "UserHolder.java"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/facebook/katana/ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/ViewHolder",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/facebook/katana/activity/media/UserHolder;->a:J

    return-wide v0
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/facebook/katana/activity/media/UserHolder;->a:J

    .line 21
    return-void
.end method

.method public final a(Lcom/facebook/katana/ViewHolder;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/ViewHolder",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    iput-object p1, p0, Lcom/facebook/katana/activity/media/UserHolder;->d:Lcom/facebook/katana/ViewHolder;

    .line 69
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/facebook/katana/activity/media/UserHolder;->b:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UserHolder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/facebook/katana/activity/media/UserHolder;->c:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UserHolder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/facebook/katana/ViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/katana/ViewHolder",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UserHolder;->d:Lcom/facebook/katana/ViewHolder;

    return-object v0
.end method
