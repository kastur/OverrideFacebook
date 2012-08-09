.class public Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;
.super Ljava/lang/Object;
.source "EventDetailsAdapter.java"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;->a:I

    .line 58
    iput-object p2, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;->b:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;->c:Ljava/lang/String;

    .line 60
    iput-boolean p4, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;->d:Z

    .line 61
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;->d:Z

    return v0
.end method
