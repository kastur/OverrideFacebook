.class public Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;
.super Ljava/lang/Object;
.source "FeedbackAdapter.java"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;->a:I

    .line 69
    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;->a:I

    return v0
.end method
