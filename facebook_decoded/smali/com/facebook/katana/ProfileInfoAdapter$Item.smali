.class public Lcom/facebook/katana/ProfileInfoAdapter$Item;
.super Ljava/lang/Object;
.source "ProfileInfoAdapter.java"


# instance fields
.field final a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/facebook/katana/ProfileInfoAdapter$Item;->a:I

    .line 68
    iput-object p2, p0, Lcom/facebook/katana/ProfileInfoAdapter$Item;->b:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/facebook/katana/ProfileInfoAdapter$Item;->c:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/ProfileInfoAdapter$Item;->e:Ljava/lang/String;

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/ProfileInfoAdapter$Item;->d:J

    .line 72
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/ProfileInfoAdapter$Item;->a:I

    .line 77
    iput-object p2, p0, Lcom/facebook/katana/ProfileInfoAdapter$Item;->b:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/facebook/katana/ProfileInfoAdapter$Item;->c:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lcom/facebook/katana/ProfileInfoAdapter$Item;->e:Ljava/lang/String;

    .line 80
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/ProfileInfoAdapter$Item;->d:J

    .line 81
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/katana/ProfileInfoAdapter$Item;->a:I

    .line 87
    iput-object p2, p0, Lcom/facebook/katana/ProfileInfoAdapter$Item;->b:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lcom/facebook/katana/ProfileInfoAdapter$Item;->c:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lcom/facebook/katana/ProfileInfoAdapter$Item;->e:Ljava/lang/String;

    .line 90
    iput-wide p5, p0, Lcom/facebook/katana/ProfileInfoAdapter$Item;->d:J

    .line 91
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/facebook/katana/ProfileInfoAdapter$Item;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/katana/ProfileInfoAdapter$Item;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/katana/ProfileInfoAdapter$Item;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/katana/ProfileInfoAdapter$Item;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/facebook/katana/ProfileInfoAdapter$Item;->d:J

    return-wide v0
.end method
