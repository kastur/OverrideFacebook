.class public Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;
.super Ljava/lang/Object;
.source "ProfileListCursorAdapter.java"


# instance fields
.field protected final a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section$1;

    invoke-direct {v0}, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section$1;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;->a:Ljava/lang/String;

    .line 110
    iput p2, p0, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;->b:I

    .line 111
    iput p3, p0, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;->c:I

    .line 112
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;->b:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;->c:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;->a:Ljava/lang/String;

    return-object v0
.end method
