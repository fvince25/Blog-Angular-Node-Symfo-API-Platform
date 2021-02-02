<?php

namespace  App\DataPersister;

use ApiPlatform\Core\DataPersister\DataPersisterInterface;
use App\Entity\Article;
use Doctrine\ORM\EntityManagerInterface;
use Psr\Log\LoggerInterface;

class ArticlePersister implements DataPersisterInterface {

    public function __construct(EntityManagerInterface $em) {
        $this->em = $em;
    }

    public function supports($data): bool
    {
        return $data instanceof Article;
    }

    public function persist($data, array $context = [])
    {
        if (($context['collection_operation_name'] ?? null) === 'post' ) {
            $data->setCreatedAt(new \DateTime());
            $data->setReference('1234');
        }
        $data->setUpdateAt(new \DateTime());
        $this->em->persist($data);
        $this->em->flush();
    }

    public function remove($data)
    {
        $this->em->remove($data);
        $this->em->flush();
    }
}
