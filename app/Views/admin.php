<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .card {
            background-color: #fff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            padding: 20px;
            margin-bottom: 20px;
        }

        h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .table-responsive {
            overflow-x: auto;
        }

        .table-responsive th,
        .table-responsive td {
            white-space: nowrap;
        }

        @media (max-width: 576px) {
            .table-responsive table {
                display: block;
                overflow-x: auto;
                white-space: nowrap;
            }

            .table-responsive thead {
                display: none;
            }

            .table-responsive tbody,
            .table-responsive th,
            .table-responsive td,
            .table-responsive tr {
                display: block;
            }

            .table-responsive td:before {
                content: attr(data-label);
                float: left;
                font-weight: bold;
                text-transform: uppercase;
                margin-right: 6px;
            }

            .table-responsive td:not(:last-child)::before {
                content: attr(data-label) ":";
            }

            .d-flex.mobile-only {
                display: flex;
                justify-content: space-between;
                align-items: center;
                flex-wrap: wrap;
            }

            .btn.mobile-only {
                width: 48%;
                margin-bottom: 10px;
            }

            .btn.mobile-only:last-child {
                margin-bottom: 0;
            }

            .d-flex.desktop-only {
                display: none;
            }
        }

        @media (min-width: 577px) {
            .btn.mobile-only {
                display: none;
            }

            .d-flex.desktop-only {
                display: flex;
                justify-content: flex-start;
                align-items: center;
                margin-bottom: 20px;
            }

            .form-inline .form-group {
                margin-bottom: 0;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="card">
            <h1>Dashboard</h1>
            <div class="d-flex justify-content-between mb-3 mobile-only">
                <button class="btn btn-primary" onclick="window.print()">Print</button>
                <a class="btn btn-success" href="<?= base_url('/admin/export-excel') ?>">Export to Excel</a>
            </div>
            <form class="form-inline d-flex justify-content-between mb-3 desktop-only" method="GET" action="<?= base_url('/admin') ?>">
                <div class="form-group">
                    <input class="form-control" type="search" name="keyword" placeholder="Search" aria-label="Search">
                </div>
                <button class="btn btn-outline-primary" type="submit">Search</button>
            </form>
            <form method="POST" action="<?= base_url('/login') ?>">
                <input type="hidden" name="_method" value="delete" />
                <button class="btn btn-danger desktop-only">Logout</button>
            </form>
            <div class="table-responsive">
                <table class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>Nama</th>
                            <th>Email</th>
                            <th>Subjek</th>
                            <th>Pesan</th>
                            <th>Tanggal</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($comments as $comment) : ?>
                            <tr>
                                <td data-label="Nama"> <?= $comment['nama'] ?></td>
                                <td data-label="Email"> <?= $comment['email'] ?></td>
                                <td data-label="Subjek"> <?= $comment['subjek'] ?></td>
                                <td data-label="Pesan"> <?= $comment['pesan'] ?></td>
                                <td data-label="Tanggal"> <?= $comment['tanggal'] ?></td>
                                <td>
                                    <form method="POST" action="<?= base_url('/admin/' . $comment['id']) ?>" onsubmit="return confirm('Apakah Anda yakin ingin menghapus PESAN ini?')">
                                        <input type="hidden" name="_method" value="delete" />
                                        <button class="btn btn-sm btn-danger">Hapus</button>
                                    </form>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>

</html>