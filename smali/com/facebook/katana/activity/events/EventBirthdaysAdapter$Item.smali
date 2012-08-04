.class public Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;
.super Ljava/lang/Object;
.source "EventBirthdaysAdapter.java"


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:J

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;IIILjava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-wide p1, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;->a:J

    .line 70
    iput-object p3, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;->b:Ljava/lang/String;

    .line 71
    iput p6, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;->c:I

    .line 74
    iput-object p7, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;->e:Ljava/lang/String;

    .line 75
    iput-wide p8, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;->d:J

    .line 76
    iput-object p10, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;->f:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;->c:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;->a:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;->d:J

    return-wide v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;->f:Ljava/lang/String;

    return-object v0
.end method
